import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/user/user_bloc.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/buttons.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/datasource/data/local_user_data.dart';

import '../../common/injector/injector.dart';
import '../../common/resource/name_image.dart';
import '../../common/widgets/base_button.dart';
import '../../common/widgets/images/svg_image_widget.dart';
import '../../common/widgets/outline_border_text_field.dart';
import '../../common/widgets/text_field_custom.dart';
import '../../datasource/data/model/entity/chart_model.dart';
import '../login/login_screen.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserBloc _bloc = Injector.resolve<UserBloc>();
  late TooltipBehavior _tooltip;
  @override
  void initState() {
    _bloc.addData();
    _tooltip = TooltipBehavior(enable: true);
    _bloc.showInfo = false;
    _bloc.edit=true;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(

      body: HttpStreamHandler<UserBloc,BaseState>(
        bloc: _bloc,
        listener: (context, state) async{
          if(state is LogoutSuccessState){
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => LoginScreen()),
                    (Route<dynamic> route) => false);
          }
        },
        builder: (context,state){
          return Container(
            height: height,
            width: width,
            color :ThemeColor.clr_F4F6FA,
            child: Padding(
                padding: EdgeInsets.symmetric( vertical: height_50),
                child: SingleChildScrollView(
                  child: Column(
                    children:[
                      Container(
                        width: width,
                        margin: EdgeInsets.symmetric(horizontal: width_10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child:Text("VN",style:TextStyleCommon.textStyleAppBar),
                            ),
                            GestureDetector(
                              onTap: (){
                                _bloc.add(LogoutEvent());
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.logout,color: ThemeColor.clr_CE6161,),
                                  Text(TextConstants.textButtonLogout,style: TextStyleCommon.textStyleAppBar),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height_10,),
                      Stack(
                        children: [
                          Column(
                            children:[
                              Container(
                                width:width,
                                //   margin: EdgeInsets.only(left: width_24,right: width_24),
                                decoration: BoxDecoration(color: ThemeColor.clr_FFFFFF,
                                    //   borderRadius: BorderRadius.circular(radius_16),
                                    border: Border.all(color: ThemeColor.clr_CE6161)
                                ),

                                child: Padding(
                                  padding: EdgeInsets.all(width_20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(TextConstants.textCompany,style: TextStyleCommon.textUserNameHeader,),
                                          Container(
                                            width: width_50,
                                            height: height_50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(radius_16),
                                              image:DecorationImage(image : AssetImage( png_ic_logo)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: height_20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: width_70,
                                            height: height_72,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(radius_16),
                                              image:DecorationImage(image : NetworkImage(LocalUserData.getInstance.user?.avatarUrl)),
                                            ),
                                          ),

                                          Container(
                                            margin: EdgeInsets.only(left: width_10),
                                            child: Column(
                                              children: [
                                                Text("${LocalUserData.getInstance.user?.lastName} ${LocalUserData.getInstance.user?.firstName}",style: TextStyleCommon.textStyleAppBar,),
                                                Text("${LocalUserData.getInstance.user?.email}"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: height_30,),
                                    ],
                                  ),
                                ),
                              ),
                              _bloc.showInfo?Container(
                                width: width,
                                decoration: BoxDecoration(
                                  color: ThemeColor.clr_CE6161,
                                  // borderRadius: BorderRadius.only(
                                  //   topLeft: Radius.circular(radius_52)
                                  //   , topRight: Radius.circular(radius_52),
                                  // bottomLeft: Radius.circular(radius_16),
                                  //     bottomRight: Radius.circular(radius_16)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: width_16, vertical: height_10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(TextConstants.textUserInfo,style: TextStyleCommon.textStyleExpandBar,),
                                          GestureDetector(
                                            onTap: (){
                                              _bloc.add(SelectedEditEvent(_bloc.edit));
                                            },
                                            child: Row(
                                              children: [
                                                Icon(_bloc.edit?Icons.edit:Icons.cancel_outlined),
                                                Text(_bloc.edit?TextConstants.textEdit:TextConstants.textCancel,style:  TextStyleCommon.textStyleExpandBar,),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: height_5,),
                                    Container(
                                        width: width,
                                        margin: EdgeInsets.symmetric(horizontal: width_16,vertical: height_10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                    child:Column(
                                                      children: [
                                                        Container(
                                                            width:width/2,
                                                            child: Text(TextConstants.textLastName,textAlign: TextAlign.left,style: TextStyleCommon.textField)),
                                                        SizedBox(height: height_7,),
                                                        OutlineBorderTextField(
                                                          textEditingController: _bloc.textLastNameController,
                                                          focusNode: _bloc.focusNodeLastName,
                                                          cursorColor: ThemeColor.clr_000000,
                                                          hintText: LocalUserData.getInstance.user.lastName,
                                                          hintStyle: TextStyle(
                                                            color: ThemeColor.clr_000000,
                                                            fontSize: fontSize_12,
                                                            fontStyle: FontStyle.normal,
                                                          ),
                                                          maxLines: 1,
                                                          enabled: _bloc.edit?false:true,
                                                          fillColor: _bloc.edit?ThemeColor.clr_E0E0E1:ThemeColor.clr_FFFFFF,
                                                          borderInActiveColor:
                                                          ThemeColor.clr_000000,
                                                          borderActiveColor: ThemeColor.clr_FFFFFF,
                                                          fontSize: fontSize_16,
                                                          labelColor: ThemeColor.clr_000000,
                                                          labelFontSize: fontSize_14,
                                                          borderRadius: radius_20,
                                                          keyboardType: TextInputType.emailAddress,
                                                          textInputAction: TextInputAction.next,
                                                          autofocus: false,
                                                          checkOfErrorOnFocusChange: true,
                                                          inputFormatters: [],
                                                          validation: (textToValidate) {
                                                            return '';
                                                          },
                                                        ),
                                                      ],
                                                    )
                                                ),
                                                SizedBox(width: width_6,),
                                                Expanded(
                                                    child:Column(
                                                      children: [
                                                        Container(
                                                            width: width/2,
                                                            child: Text(TextConstants.textFirstName,textAlign: TextAlign.left,style: TextStyleCommon.textField)),
                                                        SizedBox(height: height_7,),
                                                        OutlineBorderTextField(
                                                          textEditingController: _bloc.textFirstNameController,
                                                          focusNode: _bloc.focusNodeFirstName,
                                                          cursorColor: ThemeColor.clr_000000,
                                                          hintText: LocalUserData.getInstance.user.firstName,
                                                          hintStyle: TextStyle(
                                                            color: ThemeColor.clr_000000,
                                                            fontSize: fontSize_12,
                                                            fontStyle: FontStyle.normal,
                                                          ),
                                                          maxLines: 1,
                                                          enabled: _bloc.edit?false:true,
                                                          fillColor: _bloc.edit?ThemeColor.clr_E0E0E1:ThemeColor.clr_FFFFFF,
                                                          borderInActiveColor:
                                                          ThemeColor.clr_000000,
                                                          borderActiveColor: ThemeColor.clr_FFFFFF,
                                                          fontSize: fontSize_16,
                                                          labelColor: ThemeColor.clr_000000,
                                                          labelFontSize: fontSize_14,
                                                          borderRadius: radius_20,
                                                          keyboardType: TextInputType.emailAddress,
                                                          textInputAction: TextInputAction.next,
                                                          autofocus: false,
                                                          checkOfErrorOnFocusChange: true,
                                                          inputFormatters: [],
                                                          validation: (textToValidate) {
                                                            return '';
                                                          },
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                            SizedBox(height: height_20,),
                                            Column(
                                              children: [
                                                Container(
                                                    width:width,
                                                    child: Text(TextConstants.textEmail,textAlign: TextAlign.left,style: TextStyleCommon.textField)),
                                                SizedBox(height: height_7,),
                                                OutlineBorderTextField(
                                                  textEditingController: _bloc.textEmailController,
                                                  focusNode: _bloc.focusNodeEmail,
                                                  cursorColor: ThemeColor.clr_000000,
                                                  hintText: LocalUserData.getInstance.user.email,
                                                  hintStyle: TextStyle(
                                                    color: ThemeColor.clr_000000,
                                                    fontSize: fontSize_12,
                                                    fontStyle: FontStyle.normal,
                                                  ),
                                                  maxLines: 1,
                                                  enabled: _bloc.edit?false:true,
                                                  fillColor: _bloc.edit?ThemeColor.clr_E0E0E1:ThemeColor.clr_FFFFFF,
                                                  borderInActiveColor:
                                                  ThemeColor.clr_000000,
                                                  borderActiveColor: ThemeColor.clr_FFFFFF,
                                                  fontSize: fontSize_16,
                                                  labelColor: ThemeColor.clr_000000,
                                                  labelFontSize: fontSize_14,
                                                  borderRadius: radius_20,
                                                  keyboardType: TextInputType.emailAddress,
                                                  textInputAction: TextInputAction.next,
                                                  autofocus: false,
                                                  checkOfErrorOnFocusChange: true,
                                                  inputFormatters: [],
                                                  validation: (textToValidate) {
                                                    return '';
                                                  },
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: height_20,),
                                            Column(
                                              children: [
                                                Container(
                                                    width:width,
                                                    child: Text(TextConstants.textPhoneNumber,textAlign: TextAlign.left,style: TextStyleCommon.textField)),
                                                SizedBox(height: height_7,),
                                                OutlineBorderTextField(
                                                  textEditingController: _bloc.textPhoneController,
                                                  focusNode: _bloc.focusNodePhone,
                                                  cursorColor: ThemeColor.clr_000000,
                                                  hintText: "038 800 1410",
                                                  hintStyle: TextStyle(
                                                    color: ThemeColor.clr_000000,
                                                    fontSize: fontSize_12,
                                                    fontStyle: FontStyle.normal,
                                                  ),
                                                  maxLines: 1,
                                                  enabled: _bloc.edit?false:true,
                                                  fillColor: _bloc.edit?ThemeColor.clr_E0E0E1:ThemeColor.clr_FFFFFF,
                                                  borderInActiveColor:
                                                  ThemeColor.clr_000000,
                                                  borderActiveColor: ThemeColor.clr_FFFFFF,
                                                  fontSize: fontSize_16,
                                                  labelColor: ThemeColor.clr_000000,
                                                  labelFontSize: fontSize_14,
                                                  borderRadius: radius_20,
                                                  keyboardType: TextInputType.emailAddress,
                                                  textInputAction: TextInputAction.next,
                                                  autofocus: false,
                                                  checkOfErrorOnFocusChange: true,
                                                  inputFormatters: [],
                                                  validation: (textToValidate) {
                                                    return '';
                                                  },
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: height_20,),
                                            Row(
                                              children: [
                                                Expanded(
                                                    child:Column(
                                                      children: [
                                                        Container(
                                                            width:width,
                                                            child: Text(TextConstants.textDateOfBirth,textAlign: TextAlign.left,style: TextStyleCommon.textField)),
                                                        SizedBox(height: height_7,),
                                                        GestureDetector(
                                                          onTap: (){
                                                            _bloc.edit?null: _selectToDate(context);
                                                          },
                                                          child: OutlineBorderTextField(
                                                            suffixIcon: Container(
                                                              width: width_45,
                                                              height: width_32,
                                                              margin: EdgeInsets.only(right: width_5),
                                                              decoration: BoxDecoration(
                                                                  color: _bloc.edit?ThemeColor.clr_E0E0E1:ThemeColor.clr_FFFFFF,
                                                                  borderRadius: BorderRadius.circular(
                                                                      radius_32)),
                                                              child: Icon(
                                                                Icons.calendar_today,
                                                                color:ThemeColor.clr_000000,
                                                                size: 25,
                                                              ),
                                                            ),
                                                            textEditingController: _bloc.textDateOfBirthController,
                                                            focusNode: _bloc.focusNodeDateOfBirth,
                                                            cursorColor: ThemeColor.clr_000000,
                                                            hintText: TextConstants.textDateOfBirth,
                                                            hintStyle: TextStyle(
                                                              color: ThemeColor.clr_000000,
                                                              fontSize: fontSize_12,
                                                              fontStyle: FontStyle.normal,
                                                            ),
                                                            maxLines: 1,
                                                            enabled: false,
                                                            fillColor: _bloc.edit?ThemeColor.clr_E0E0E1:ThemeColor.clr_FFFFFF,
                                                            borderInActiveColor:
                                                            ThemeColor.clr_000000,
                                                            borderActiveColor: ThemeColor.clr_FFFFFF,
                                                            fontSize: fontSize_16,
                                                            labelColor: ThemeColor.clr_000000,
                                                            labelFontSize: fontSize_14,
                                                            borderRadius: radius_20,
                                                            keyboardType: TextInputType.emailAddress,
                                                            textInputAction: TextInputAction.next,
                                                            autofocus: false,
                                                            checkOfErrorOnFocusChange: true,
                                                            inputFormatters: [],

                                                            validation: (textToValidate) {
                                                              return '';
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                                SizedBox(width: width_6,),

                                              ],
                                            ),
                                            SizedBox(height: height_20,),
                                            Column(
                                              children: [
                                                Container(
                                                    width:width,
                                                    child: Text(TextConstants.textAddress,textAlign: TextAlign.left,style: TextStyleCommon.textField)),
                                                SizedBox(height: height_7,),
                                                OutlineBorderTextField(
                                                  textEditingController: _bloc.textAddressController,
                                                  focusNode: _bloc.focusNodeAddress,
                                                  cursorColor: ThemeColor.clr_000000,
                                                  hintText: "Viet Nam",
                                                  hintStyle: TextStyle(
                                                    color: ThemeColor.clr_000000,
                                                    fontSize: fontSize_12,
                                                    fontStyle: FontStyle.normal,
                                                  ),
                                                  maxLines: 1,
                                                  enabled: _bloc.edit?false:true,
                                                  fillColor: _bloc.edit?ThemeColor.clr_E0E0E1:ThemeColor.clr_FFFFFF,
                                                  borderInActiveColor:
                                                  ThemeColor.clr_000000,
                                                  borderActiveColor: ThemeColor.clr_FFFFFF,
                                                  fontSize: fontSize_16,
                                                  labelColor: ThemeColor.clr_000000,
                                                  labelFontSize: fontSize_14,
                                                  borderRadius: radius_20,
                                                  keyboardType: TextInputType.emailAddress,
                                                  textInputAction: TextInputAction.next,
                                                  autofocus: false,
                                                  checkOfErrorOnFocusChange: true,
                                                  inputFormatters: [],
                                                  validation: (textToValidate) {
                                                    return '';
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                    ),
                                    SizedBox(height: height_20,),
                                    _bloc.edit?Container():  BaseButton(
                                      onPressed: (){
                                        print("ok");
                                      },
                                      height: height_45,
                                      width: width_200,
                                      title: TextConstants.textSubmit,
                                      style: TextStyleCommon.textStyleWhiteNormalTitle,
                                      backgroundColor: ThemeColor.clr_000000,
                                    ),
                                    SizedBox(height:height_20),
                                  ],
                                ),
                              ):Container(),
                            ]
                          ),
                          Positioned(
                            bottom: -12,

                            child: InkWell(
                              onTap: (){
                                _bloc.add(ShowInfoEvent(_bloc.showInfo));
                              },
                              child:
                              Container(
                                width: width,
                                decoration: BoxDecoration(
                                    color: ThemeColor.clr_FFFFFF,
                                    shape: BoxShape.circle,
                                    border: Border.all(color:ThemeColor.clr_000000)
                                ),
                                alignment: Alignment.bottomCenter,
                                child:  Icon(_bloc.showInfo?Icons.keyboard_arrow_up_outlined:Icons.keyboard_arrow_down_outlined,size:radius_32),

                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: width,
                        margin: EdgeInsets.symmetric(horizontal: width_10),
                        child: Column(
                          children: [
                            SizedBox(height: height_30,),
                            Container(
                              width:width,
                                child: Text("Your Working Today",textAlign: TextAlign.left,style: TextStyleCommon.textStyleAppBar)),
                            SizedBox(height: height_10,),
                            Container(
                              width: width,
                              decoration: BoxDecoration(
                                  color: ThemeColor.clr_CE6161,
                                  borderRadius: BorderRadius.circular(radius_16),
                                  border: Border.all(color: ThemeColor.clr_D6D9E0)),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: height_20,horizontal: width_20),
                                    height: 50,
                                    width: width,
                                    decoration: BoxDecoration(
                                      color: ThemeColor.clr_FFFFFF,
                                      borderRadius: BorderRadius.circular(radius_16),
                                      border: Border.all(color: ThemeColor.clr_000000),

                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: width_60),
                                          child: Text(TextConstants.textChoose, style: TextStyleCommon.textUserChoose,),
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(right: width_10),
                                          color: ThemeColor.clr_FFFFFF,
                                          child: GestureDetector(
                                              onTap: (){
                                                _showMyDialog(context);
                                              },
                                              child: Icon(Icons.keyboard_arrow_down_outlined,color: ThemeColor.clr_CE6161,)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height_20,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width_10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(" Project Time Yesterday",style: TextStyleCommon.textStyleAppBar),
                            Container(
                                width: width,
                                child: SfCartesianChart(
                                    primaryXAxis: CategoryAxis(),
                                    primaryYAxis: NumericAxis(minimum: 0, maximum: 16, interval: 2),
                                    tooltipBehavior: _tooltip,
                                    series: <ChartSeries<ChartData, String>>[
                                      BarSeries<ChartData, String>(
                                          dataSource: _bloc.chartData,
                                          xValueMapper: (ChartData data, _) => data.x,
                                          yValueMapper: (ChartData data, _) => data.y,
                                          name: 'LastDayTime',
                                          color: ThemeColor.clr_CE6161)
                                    ])),
                          ],
                        ),
                      ),

                    ]
                  )
                ),
            ),
          );
        },
      )
    );
  }

  Future<void> _selectToDate(BuildContext context) async {
    showDialogDate(CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      initialDateTime: DateTime.now(),
      maximumDate: DateTime.now(),
      use24hFormat: true,
      // This is called when the user changes the dateTime.
      onDateTimeChanged: (DateTime newDateTime) {
        _bloc.add(SelectedDateEvent(
            DateFormat("dd/MM/yyyy").format(newDateTime)));
      },
    ));
  }
  void showDialogDate(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
          height: 216,
          padding: const EdgeInsets.only(top: 6.0),
          // The Bottom margin is provided to align the popup above the system navigation bar.
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          // Provide a background color for the popup.
          color: CupertinoColors.systemBackground.resolveFrom(context),
          // Use a SafeArea widget to avoid system overlaps.
          child: SafeArea(
            top: false,
            child: child,
          ),
        ));
  }
  _showMyDialog(BuildContext context) async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (context) {
        return HttpStreamHandler<UserBloc, BaseState>(
            bloc: _bloc,
            listener: (context, state) {},
            builder: (context, setState) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius_16),
                ),
                child: Container(
                  height: height_344,
                  width: width_336,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: height_20),
                        child: Text(
                          TextConstants.textWorkingMode,
                          style: TextStyleCommon.textStyleTitleDialog,
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {

                                  },
                                  child: _buildItemListTask(index));
                            }),
                      ),
                      SizedBox(
                        height: height_15,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: height_8),
                        child: GestureDetector(
                          onTap: () {

                          },
                          child: BaseButton(
                            height: height_45,
                            width: width_200,
                            title: TextConstants.textOk,
                            style: TextStyleCommon.textStyleWhiteNormalTitle,
                            backgroundColor: ThemeColor.clr_CE6161,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
  Widget _buildItemListTask(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width_8, vertical: height_4),
      height: height_45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius_20)),
          color: ThemeColor.clr_FFEBEB),
      child: Container(
        margin: EdgeInsets.only(left: width_20),
        child: Row(
          children: [

            Container(
              margin: EdgeInsets.only(left: width_8),
              child: Text(
                "OK",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: ThemeColor.clr_4C5980,
                    fontSize: fontSize_16,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
