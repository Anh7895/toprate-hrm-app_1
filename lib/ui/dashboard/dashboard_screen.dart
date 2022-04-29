import 'package:toprate_hrm/blocs/dashboard/dashboard_bloc.dart';
import 'package:toprate_hrm/blocs/dashboard/dashboard_event.dart';
import 'package:toprate_hrm/blocs/dashboard/dashboard_state.dart';
import 'package:toprate_hrm/common/config/nav_key.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toprate_hrm/ui/daily_check_in/daily_checkin_screen.dart';
import 'package:toprate_hrm/ui/day_off/day_off_screen.dart';
import 'package:toprate_hrm/ui/report/report_screen.dart';
import 'package:toprate_hrm/ui/user/user_screen.dart';

import '../home/home_screen.dart';

class DashboardScreen extends StatefulWidget {
  final int? index;

  const DashboardScreen({Key? key, this.index}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  ///Init home bloc
  DashboardBloc _bloc = Injector.resolve<DashboardBloc>();
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

  void selectNotification(String? payload) async {
    debugPrint('notification payload: $payload');
    // await Navigator.push(
    //   NavKey.navKey.currentContext!,
    //   MaterialPageRoute<void>(builder: (context) => SecondScreen(payload)),
    // );
    String? token = await FirebaseMessaging.instance.getToken();
    if (token == null || token.isEmpty) {
      Navigator.pushNamed(
        NavKey.navKey.currentContext!,
        RouteName.loginScreen,
      );
    } else {
      switch (payload) {
        case 'PLUS_SALARY_FCM':
        case 'TIMEKEEPING_FCM':
          Navigator.of(NavKey.navKey.currentContext!).push(
              MaterialPageRoute(builder: (context) => DashboardScreen(index: 0)));
          break;
        case 'TIMEKEEPING_FCM':
        case 'EXPIRY_TIMEKEEPING_FCM':
          Navigator.of(NavKey.navKey.currentContext!).push(
              MaterialPageRoute(builder: (context) => DashboardScreen(index: 1)));
          break;
        case 'ANNOUNCE_FCM':
          Navigator.of(NavKey.navKey.currentContext!).push(
              MaterialPageRoute(builder: (context) => DashboardScreen(index: 2)));
          break;
        case 'LETTER_FCM':
          Navigator.of(NavKey.navKey.currentContext!).push(
              MaterialPageRoute(builder: (context) => DashboardScreen(index: 3)));
          break;
        default:
          break;
      }
    }
  }

  @override
  void initState() {

    super.initState();
    _bloc.add(ChangePageEvent(currentIndex: widget.index ?? 0));

  }

  @override
  void dispose() {
    _bloc.controller.dispose();
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HttpStreamHandler<DashboardBloc, BaseState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state is InitDataPageState) {
        } else if (state is ChangePageState) {
        _bloc.controller.jumpToPage(state.currentIndex);
        }
      },
      builder: (context, state) {
        return Scaffold(
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius_20),
                  topRight: Radius.circular(radius_20),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 0.5), //(x,y)
                      blurRadius: 5.00,
                      color: Colors.grey,
                      spreadRadius: 1.00),
                ],
              ),
              child: buildBottomNavigationBar(),
            ),
            body: PageView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                HomeScreens(),
                DailyCheckInScreen(),
                UserScreen(),
                ReportScreen(),
              ],
              controller: _bloc.controller,
            ));
      },
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _bloc.currentIndex,
      onTap: (int index) {
        _bloc.add(ChangePageEvent(currentIndex: index));
      },
      selectedIconTheme: IconThemeData(color: ThemeColor.clr_CE6161),
      selectedItemColor: ThemeColor.clr_CE6161,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(color: ThemeColor.clr_CE6161),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          activeIcon:SvgPicture.asset(ic_home, color: ThemeColor.clr_CE6161),
          icon: SvgPicture.asset(ic_home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          activeIcon:SvgPicture.asset(ic_checkin, color: ThemeColor.clr_CE6161),
          icon: SvgPicture.asset(ic_checkin),
          label: "CheckIn",
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(ic_personal, color: ThemeColor.clr_CE6161),
          icon: SvgPicture.asset(ic_personal),
          label: "Personal",
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(ic_chart, color: ThemeColor.clr_CE6161),
          icon: SvgPicture.asset(ic_chart),
          label: "Chart",
        ),
      ],
    );
  }
}
