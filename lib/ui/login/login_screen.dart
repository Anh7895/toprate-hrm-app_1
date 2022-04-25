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

import '../../common/utils/preference_utils.dart';
import '../../common/widgets/social_login_bottom_widget.dart';
import '../../datasource/data/local_user_data.dart';
import 'component/text_field_login.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginBloc _bloc = Injector.resolve<LoginBloc>();

  double width = 0;
  double height = 0;

  Future getToken() async {
    return LocalUserData.getInstance.accessToken =
    await PreferenceUtils.getString("access_token");
  }
  @override
  void initState() {
    getToken().then((value) {
      if(value != null && value != ''){
        Future.delayed(Duration(seconds: 1), () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => DashboardScreen()),
                  (Route<dynamic> route) => false);
        });
      }else{
        return ;
      }
    });
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

          if (state is LoginSuccessState) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => DashboardScreen()),
                    (Route<dynamic> route) => false);
            return;
          }
          if (state is LoginFailState) {

            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Yêu Cầu Mail Công Ty"),
            ));
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
                body: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: ThemeColor.clr_F4F6FA,
                  child: Stack(
                    children: [
                      SingleChildScrollView(
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
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text(TextConstants.textTopRate, style: TextStyleCommon.textStyleTopRate,),
                                 SizedBox(width: 5,),
                                 Text(TextConstants.textApp, style:  TextStyleCommon.textStyleWelcome,),
                               ],
                             ),
                                SizedBox(height: height_16),
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
                                  _bloc.add(GoogleLoginEvent(value[0],value[1]));
                                  },

                                  callBackFacebook: null,
                                  callBackApple: null,
                                ),
                              ],
                            ),
                          ],
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
