import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/ui/dashboard/dashboard_screen.dart';
import 'package:toprate_hrm/ui/login/login_screen.dart';
import 'package:toprate_hrm/ui/notification/notification_screen.dart';
import 'package:toprate_hrm/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:openapi/openapi.dart';
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
      case RouteName.notification:
        return MaterialPageRoute(
            builder: (_) => NotificationScreen(),
            settings:
            RouteSettings(name: RouteName.notification));
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
