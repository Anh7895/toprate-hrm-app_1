import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
import 'package:toprate_hrm/common/widgets/social_login_button_widget.dart';
import 'package:toprate_hrm/ui/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common/widgets/social_login_bottom_widget.dart';
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
                                    margin: EdgeInsets.only(top: height_76),
                                    url: png_ic_logo,
                                    width: width_59,
                                    height: height_60,
                                    boxFit: BoxFit.fill,
                                  ),
                               SizedBox(height: height_26),
                               Text(TextConstants.textWelcome, style:  TextStyleCommon.textStyleWelcome,),
                               Container(
                                 width: width_241,
                                 height: height_64,
                                 margin:  EdgeInsets.only(left: width_80,right: width_66),
                                 child: Row(
                                   children: [
                                     Text(TextConstants.textTopRate, style: TextStyleCommon.textStyleTopRate,),
                                     SizedBox(width: 5,),
                                     Text(TextConstants.textApp, style:  TextStyleCommon.textStyleWelcome,),
                                   ],
                                 ),
                               ),
                                  Text(
                                    TextConstants.textInfo,
                                    style:TextStyleCommon.textStyleDetailWelcome,
                                    textAlign: TextAlign.center,
                                  ),
                                  Image.asset(png_image_login),
                                    SizedBox(
                                    height: height_27,
                                  ),
                                  GroupSocialScreen(showFacebook: false,
                                    callBackGoogle: (value){
                                    _bloc.add(GoogleLoginEvent(value));
                                    },
                                    callBackFacebook: null,
                                    callBackApple: null,
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
