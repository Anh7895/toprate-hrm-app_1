import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/ui/dashboard/dashboard_screen.dart';
import 'package:toprate_hrm/ui/day_off/day_off_screen.dart';
import 'package:toprate_hrm/ui/login/login_screen.dart';
import 'package:toprate_hrm/ui/mycheckin/checkin_screen.dart';
import 'package:toprate_hrm/ui/notification/notification_screen.dart';
import 'package:toprate_hrm/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/ui/user/user_screen.dart';
import 'package:toprate_hrm/ui/report/report_screen.dart';

import 'daily_check_in/daily_checkin_screen.dart';
import 'login/login_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.loginScreen:
        return MaterialPageRoute(
            builder: (_) => LoginScreen(),
            settings: RouteSettings(name: RouteName.loginScreen));
      case RouteName.dashboard:
        return MaterialPageRoute(
            builder: (_) => DashboardScreen(),
            settings:
            RouteSettings(name: RouteName.dashboard));
    case RouteName.splashScreen:
      return MaterialPageRoute(
          builder: (_) => SplashScreen(),
          settings:
          RouteSettings(name: RouteName.splashScreen));
      case RouteName.dailyCheckInScreen:
        return MaterialPageRoute(
            builder: (_) => DailyCheckInScreen(data: settings.arguments,),
            settings:
            RouteSettings(name: RouteName.dailyCheckInScreen));

      case RouteName.dayOffScreen:
        return MaterialPageRoute(
            builder: (_) => DayOffScreen(),
            settings: RouteSettings(name: RouteName.dayOffScreen));
      case RouteName.checkinScreen:
        return MaterialPageRoute(
            builder: (_) => CheckinScreen(),
            settings: RouteSettings(name: RouteName.checkinScreen));
      case RouteName.notification:
        return MaterialPageRoute(
            builder: (_) => NotificationScreen(),
            settings: RouteSettings(name: RouteName.notification));

      case RouteName.report:
        return MaterialPageRoute(
            builder: (_) => ReportScreen(),
            settings: RouteSettings(name: RouteName.report));

      case RouteName.user:
        return MaterialPageRoute(
            builder: (_) => UserScreen(),
            settings:
            RouteSettings(name: RouteName.user));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }

  static Map<String, WidgetBuilder> _getCombinedRoutes() => {};

  static Map<String, WidgetBuilder> getAll() => _getCombinedRoutes();
}
