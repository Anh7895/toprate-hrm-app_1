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
import '../../common/multi_language/internationalization.dart';
import '../../common/resource/name_image.dart';
import '../../common/widgets/base_button.dart';
import '../../common/widgets/images/svg_image_widget.dart';
import '../../common/widgets/loading_widget.dart';
import '../../common/widgets/outline_border_text_field.dart';
import '../../common/widgets/text_field_custom.dart';
import '../../datasource/data/model/entity/chart_model.dart';
import '../login/login_screen.dart';

class UserScreen extends StatefulWidget {

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
          return Stack(
            children: [
              Container(
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
                                              Text(S.of(context).translate("textCompany"),style: TextStyleCommon.textAppBarStyle,),
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
                                                    Text("${LocalUserData.getInstance.user?.lastName} ${LocalUserData.getInstance.user?.firstName}",style: TextStyleCommon.textTitleStyle,),
                                                    Text("${LocalUserData.getInstance.user?.email}",style: TextStyleCommon.textTitleStyle),
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
                                              Text(S.of(context).translate("textUserInfo"),style: TextStyleCommon.textTitleStyle,),
                                              GestureDetector(
                                                onTap: (){
                                                  _bloc.add(SelectedEditEvent(_bloc.edit));
                                                },
                                                child: Row(
                                                  children: [
                                                    Icon(_bloc.edit?Icons.edit:Icons.cancel_outlined),
                                                    Text(_bloc.edit?S.of(context).translate("textEdit"):S.of(context).translate("textCancel"),style:  TextStyleCommon.textTitleStyle,),
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
                                                                child: Text(S.of(context).translate("textLastName"),textAlign: TextAlign.left,style: TextStyleCommon.textNormalStyle)),
                                                            SizedBox(height: height_7,),
                                                            OutlineBorderTextField(
                                                              textEditingController: _bloc.textLastNameController,
                                                              focusNode: _bloc.focusNodeLastName,
                                                              cursorColor: ThemeColor.clr_000000,
                                                              hintText: LocalUserData.getInstance.user.lastName,
                                                              hintStyle: TextStyleCommon.textHintStyle,
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
                                                                child: Text(S.of(context).translate("textFirstName"),textAlign: TextAlign.left,style: TextStyleCommon.textNormalStyle)),
                                                            SizedBox(height: height_7,),
                                                            OutlineBorderTextField(
                                                              textEditingController: _bloc.textFirstNameController,
                                                              focusNode: _bloc.focusNodeFirstName,
                                                              cursorColor: ThemeColor.clr_000000,
                                                              hintText: LocalUserData.getInstance.user.firstName,
                                                              hintStyle: TextStyleCommon.textHintStyle,
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
                                                        child: Text(S.of(context).translate("textEmail"),textAlign: TextAlign.left,style: TextStyleCommon.textNormalStyle)),
                                                    SizedBox(height: height_7,),
                                                    OutlineBorderTextField(
                                                      textEditingController: _bloc.textEmailController,
                                                      focusNode: _bloc.focusNodeEmail,
                                                      cursorColor: ThemeColor.clr_000000,
                                                      hintText: LocalUserData.getInstance.user.email,
                                                      hintStyle: TextStyleCommon.textHintStyle,
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
                                                        child: Text(S.of(context).translate("textPhoneNumber"),textAlign: TextAlign.left,style: TextStyleCommon.textNormalStyle)),
                                                    SizedBox(height: height_7,),
                                                    OutlineBorderTextField(
                                                      textEditingController: _bloc.textPhoneController,
                                                      focusNode: _bloc.focusNodePhone,
                                                      cursorColor: ThemeColor.clr_000000,
                                                      hintText: "038 800 1410",
                                                      hintStyle: TextStyleCommon.textHintStyle,
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
                                                                child: Text(S.of(context).translate("textDateOfBirth"),textAlign: TextAlign.left,style: TextStyleCommon.textNormalStyle
                                                                )),
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
                                                                hintText: S.of(context).translate("textDateOfBirth"),
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
                                                        child: Text(S.of(context).translate("textAddress"),textAlign: TextAlign.left,style: TextStyleCommon.textNormalStyle)),
                                                    SizedBox(height: height_7,),
                                                    OutlineBorderTextField(
                                                      textEditingController: _bloc.textAddressController,
                                                      focusNode: _bloc.focusNodeAddress,
                                                      cursorColor: ThemeColor.clr_000000,
                                                      hintText: "Viet Nam",
                                                      hintStyle: TextStyleCommon.textHintStyle,
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
                                          title: S.of(context).translate("submit"),
                                          style: TextStyleCommon.textButtonStyle(context),
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
                          SizedBox(height: height_20,),
                        ]
                      )
                    ),
                ),
              ),
              Visibility(
                  visible: state is StartCallApiState,
                  child: LoadingWidget()
              )
            ],
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
}
