import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/login/login_bloc.dart';
import 'package:toprate_hrm/blocs/login/login_event.dart';
import 'package:toprate_hrm/blocs/login/login_state.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/button_custom_widget.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/common/widgets/images/local_image_widget.dart';
import 'package:toprate_hrm/common/widgets/images/svg_image_widget.dart';
import 'package:toprate_hrm/common/widgets/loading_widget.dart';
import 'package:toprate_hrm/ui/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'component/text_field_login.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginBloc _bloc = Injector.resolve<LoginBloc>();

  double width = 0;
  double height = 0;

  @override
  void initState() {
    _bloc.add(InitLoginEvent());
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: HttpStreamHandler<LoginBloc, BaseState>(
        bloc: _bloc,
        listener: (context, state) async {
          if (state is AddDeviceTokenSuccessState) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => DashboardScreen()),
                    (Route<dynamic> route) => false);
            return;
          }

          if (state is ValidateLoginState) {
            if (state.valid) {
              return;
            }
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message ?? "Error"),
            ));
          }

          if (state is ValidateSwitchForgotPasswordScreenState) {
            if (state.valid) {
              return;
            }
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message ?? "Error"),
            ));
          }

        },
        builder: (context, state) {
          return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Scaffold(
                backgroundColor: Colors.transparent,
                resizeToAvoidBottomInset: false,
                body: LocalImageWidget(
                  url: png_background_login,
                  width: double.infinity,
                  height: double.infinity,
                  boxFit: BoxFit.cover,
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width_16),
                          child: Column(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  LocalImageWidget(
                                    margin: EdgeInsets.only(top: height_118),
                                    url: png_logo_an_phu,
                                    width: width_191,
                                    height: height_117,
                                    boxFit: BoxFit.fill,
                                  ),
                                  TextFieldLogin(
                                    loginBloc: _bloc,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        onChanged: (bool? value) {
                                          _bloc.add(ChangeStatusSaveAccEvent());
                                        },
                                        activeColor: ThemeColor.clr_136849,
                                        value: _bloc.saveAcc,
                                      ),
                                      Text(TextConstants.textSaveAcc,style: TextStyleCommon.font12pxStyleNormal(
                                          context, height: 1), )
                                    ],
                                  ),
                                  ButtonCustomWidget(
                                    onPress: () {
                                      // Navigator.pushNamed(context, RouteName.dashboard);
                                      _bloc.add(ValidateLoginEvent());
                                    },
                                    title: TextConstants.textButtonLogin,
                                    color: ThemeColor.clr_136849,
                                    height: height_52,
                                  ),
                                  SizedBox(
                                    height: height_21,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _bloc.add(ValidateSwitchForgotPasswordScreenEvent());
                                    },
                                    child: Text(
                                      TextConstants.textForgotPass,
                                      style:
                                      TextStyleCommon.textButtonUnderline(
                                          context),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height_80,
                                  ),
                                  Text(
                                    TextConstants.textInfo,
                                    style: TextStyleCommon.font12pxStyleNormal(
                                        context),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: height_15,
                                  ),
                                  ButtonCustomWidget(
                                    onPress: () {
                                    },
                                    leadingIcon: SVGImageWidget(
                                      url: svg_ic_recruitment_infor,
                                      width: width_24,
                                      height: width_24,
                                    ),
                                    title:
                                    TextConstants.textViewInfoRecruitment,
                                    margin: EdgeInsets.only(
                                        left: width_50,
                                        right: width_50,
                                        bottom: height_20),
                                    color: ThemeColor.clr_136849,
                                    height: height_40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                          visible: state is StartCallApiState,
                          child: LoadingWidget()
                      )
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
