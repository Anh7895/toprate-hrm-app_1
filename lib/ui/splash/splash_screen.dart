import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/splash/splash_bloc.dart';
import 'package:toprate_hrm/blocs/splash/splash_event.dart';
import 'package:toprate_hrm/blocs/splash/splash_state.dart';
import 'package:toprate_hrm/common/config/nav_key.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/utils/preference_utils.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/common/widgets/images/local_image_widget.dart';
import 'package:toprate_hrm/common/widgets/images/svg_image_widget.dart';
import 'package:toprate_hrm/datasource/data/local_user_data.dart';
import 'package:toprate_hrm/ui/dashboard/dashboard_screen.dart';
import 'package:toprate_hrm/ui/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_messaging_platform_interface/firebase_messaging_platform_interface.dart';
import 'package:flutter/material.dart';
import '../../common/multi_language/internationalization.dart';
import '../../common/resource/strings.dart';
import '../../common/resource/text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashBloc _bloc = Injector.resolve<SplashBloc>();
  String? payload;
  // For handling notification when the app is in terminated state
  void checkForInitialMessage() async {
    await Firebase.initializeApp();
    RemoteMessage? initialMessage =
    await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      payload = initialMessage.data["action"] == null ? null : initialMessage.data["action"];
    }
  }
  //
  // void selectNotification(String? payload) async {
  //   debugPrint('notification payload: $payload');
  //   // await Navigator.push(
  //   //   NavKey.navKey.currentContext!,
  //   //   MaterialPageRoute<void>(builder: (context) => SecondScreen(payload)),
  //   // );
  //   String? token = await FirebaseMessaging.instance.getToken();
  //   if (token == null || token.isEmpty) {
  //     Navigator.pushNamed(
  //       NavKey.navKey.currentContext!,
  //       RouteName.loginScreen,
  //     );
  //   } else {
  //     switch (payload) {
  //       case 'PLUS_SALARY_FCM':
  //       case 'TIMEKEEPING_FCM':
  //         Navigator.of(NavKey.navKey.currentContext!).pushAndRemoveUntil(
  //             MaterialPageRoute(builder: (context) => DashboardScreen(index: 0)),(Route<dynamic> route) => false);
  //         break;
  //       case 'TIMEKEEPING_FCM':
  //       case 'EXPIRY_TIMEKEEPING_FCM':
  //         Navigator.of(NavKey.navKey.currentContext!).pushAndRemoveUntil(
  //             MaterialPageRoute(builder: (context) => DashboardScreen(index: 1)), (Route<dynamic> route) => false);
  //         break;
  //       case 'ANNOUNCE_FCM':
  //         Navigator.of(NavKey.navKey.currentContext!).pushAndRemoveUntil(
  //             MaterialPageRoute(builder: (context) => DashboardScreen(index: 2)),(Route<dynamic> route) => false);
  //         break;
  //       case 'LETTER_FCM':
  //         Navigator.of(NavKey.navKey.currentContext!).pushAndRemoveUntil(
  //             MaterialPageRoute(builder: (context) => DashboardScreen(index: 3)),(Route<dynamic> route) => false);
  //         break;
  //       default:
  //     }
  //   }
  // }

  @override
  void initState() {
    getRefreshToken();
    getUser();
    getToken().then((value) {
      if(value != null && value != ''){
        LocalUserData.getInstance.getUserData();
        Future.delayed(Duration(seconds: 1), () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => DashboardScreen()),
                  (Route<dynamic> route) => false);
        });
      }else{
        Future.delayed(Duration(seconds: 1),(){
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LoginScreen()),
                  (Route<dynamic> route) => false);
        });
      }
    });

    super.initState();
  }

  Future getToken() async {
    return LocalUserData.getInstance.accessToken =
        await PreferenceUtils.getString("access_token");
  }

  Future getRefreshToken() async {
    return LocalUserData.getInstance.refreshToken =
        await PreferenceUtils.getString("refresh_token");
  }

  Future getUser() async {
    return LocalUserData.getInstance.getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: HttpStreamHandler<SplashBloc, BaseState>(
        bloc: _bloc,
        listener: (context, state) {

        },
        builder: (context, state) {
          return
            Scaffold(
              body: Container(color: ThemeColor.clr_FFFFFF,
                // margin: EdgeInsets.only(top: height_200),
                width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height ,
                child:  Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SVGImageWidget(url: ic_svg_logo,
                      height: height_72,
                      width: width_80,),

                      SizedBox(height: height_10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(S.of(context).translate("textTopRate"), style: TextStyleCommon.textHeaderInLoginStyle(context),),
                          SizedBox(width: 5,),
                          Text(S.of(context).translate("textApp"), style:  TextStyleCommon.textHeaderInLoginStyle(context, color: ThemeColor.clr_CE6161,)),
                        ],
                      ),
                      SizedBox(height: height_16),
                      Text(
                        S.of(context).translate("textInfo"),
                        style:TextStyleCommon.textTitleInLoginStyle(context),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ),
            );

        }
      ),
    );
  }
}

