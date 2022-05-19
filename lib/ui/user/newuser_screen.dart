

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/user/user_bloc.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/multi_language/internationalization.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/common/widgets/images/svg_image_widget.dart';
import 'package:toprate_hrm/common/widgets/loading_widget.dart';
import 'package:toprate_hrm/common/widgets/outline_border_text_field.dart';
import 'package:toprate_hrm/datasource/data/local_user_data.dart';

class NewUserScreen extends StatefulWidget {
  NewUserScreen({Key? key}) : super(key: key);

  @override
  State<NewUserScreen> createState() => _NewUserScreenState();
}

class _NewUserScreenState extends State<NewUserScreen> {

  UserBloc _bloc = Injector.resolve<UserBloc>();

  @override
  Widget build(BuildContext context) {
    return HttpStreamHandler<UserBloc, BaseState>(
      bloc: _bloc,
      listener: (context, state) {
        // if (state is FillInformationState) {
        //   Navigator.pop(context);
        // }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: AppBar(
              elevation: 0,
            ),
          ),
          body: SafeArea(
            child: Container(
              child: Stack(
                children: [
                  _buildMainBody(context),
                  Visibility(
                      visible: state is StartCallApiState,
                      child: LoadingWidget())
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  Widget _buildMainBody(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height_25),
      child: Column (
          children: [
          SizedBox(height: height_28),
          _topNavigation(),
          SizedBox(height: height_26),
           Expanded(
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
                                  width: width,
                                  decoration: BoxDecoration(
                                    color: ThemeColor.clr_FFFFFF,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: width_16, vertical: height_10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(S.of(context).translate("textBasicInfor"),
                                              style: TextStyleCommon.textTitleStyle,
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
                                                  SVGImageWidget(
                                                    url: ic_daily ,
                                                    height: height_25,
                                                    width: width_25,
                                                  ),
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
                                ),
                              ]
                          ),
                        ],
                      ),
                      SizedBox(height: height_20,),
                    ]
                )
            ),
          ),
                    ],
        ),
    );
  }

  Widget _topNavigation() {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: width_10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, RouteName.dashboard, (route) => true);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: ThemeColor.clr_CE6161,
            ),
          ),
          Spacer(),
          Text(
            // "${LocalUserData.getInstance.user?.fullname}",
            "${LocalUserData.getInstance.user?.firstName}",
            style: TextStyleCommon.textAppBarStyle,
          ),
          Spacer(),
          SizedBox(
            width: width_24,
          )
        ],
      ),
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