import 'package:toprate_hrm/common/config/nav_key.dart';
import 'package:toprate_hrm/main.dart';
import 'package:toprate_hrm/ui/dashboard/dashboard_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toprate_hrm/blocs/login/login_bloc.dart';
import 'package:toprate_hrm/common/config/languages.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/injector/injector.dart';
import 'package:toprate_hrm/ui/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   await Firebase.initializeApp();
//   showNotification(message);
//   print("Handling a background message: ${message.messageId}");
// }
//
// void showNotification(RemoteMessage message) {
//   print("Message $message");
//   RemoteNotification? notification = message.notification;
//   AndroidNotification? android = message.notification?.android;
//   String payload = message.data["action"] == null ? null : message.data["action"];
//   if (notification != null && android != null) {
//     flutterLocalNotificationsPlugin.show(
//       notification.hashCode,
//       notification.title,
//       notification.body,
//       NotificationDetails(
//         android: AndroidNotificationDetails(
//           channel.id,
//           channel.name,
//           channelDescription: channel.description,
//         ),
//       ),
//         payload: payload
//     );
//   }
// }
//
// void onDidReceiveLocalNotification(
//     int id, String? title, String? body, String? payload) async {
//   // display a dialog with the notification details, tap ok to go to another page
//   showDialog(
//     context: NavKey.navKey.currentContext!,
//     builder: (BuildContext context) => CupertinoAlertDialog(
//       title: Text(title ?? "title"),
//       content: Text(body ?? "body"),
//       actions: [
//         CupertinoDialogAction(
//           isDefaultAction: true,
//           child: Text('Ok'),
//           onPressed: () async {
//             Navigator.of(context, rootNavigator: true).pop();
//             // await Navigator.push(
//             //   context,
//             //   MaterialPageRoute(
//             //     builder: (context) => SecondScreen(payload),
//             //   ),
//             // );
//           },
//         )
//       ],
//     ),
//   );
// }
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
//             MaterialPageRoute(builder: (context) => DashboardScreen(index: 0)),
//                 (Route<dynamic> route) => false);
//         break;
//       case 'TIMEKEEPING_FCM':
//       case 'EXPIRY_TIMEKEEPING_FCM':
//         Navigator.of(NavKey.navKey.currentContext!).pushAndRemoveUntil(
//             MaterialPageRoute(builder: (context) => DashboardScreen(index: 1)),(Route<dynamic> route) => false);
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

class BaseApp extends StatefulWidget {
  @override
  _BaseAppState createState() => _BaseAppState();

  static void setLocale(BuildContext context, Locale newLocale) async {
    _BaseAppState? state = context.findAncestorStateOfType<_BaseAppState>();
    state?.changeLanguage(newLocale);
  }
}

class _BaseAppState extends State<BaseApp> {
  Locale? _locale;
  late final FirebaseMessaging _messaging;
  String? payload;
  //
  // void registerNotification() async {
  //   await Firebase.initializeApp();
  //   _messaging = FirebaseMessaging.instance;
  //   _messaging.getToken().then((value) {
  //     print(value);
  //   });
  //   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  //
  //   NotificationSettings settings = await _messaging.requestPermission(
  //     alert: true,
  //     badge: true,
  //     provisional: false,
  //     sound: true,
  //   );
  //
  //   if (settings.authorizationStatus == AuthorizationStatus.authorized) {
  //     print('User granted permission');
  //     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //       print(
  //           'Message title: ${message.notification?.title}, body: ${message.notification?.body}, data: ${message.data}');
  //
  //     });
  //   } else {
  //     print('User declined or has not accepted permission');
  //   }
  // }
  //
  // // For handling notification when the app is in terminated state
  // void checkForInitialMessage() async {
  //   await Firebase.initializeApp();
  //   RemoteMessage? initialMessage =
  //   await FirebaseMessaging.instance.getInitialMessage();
  //
  //   if (initialMessage != null) {
  //     // payload = initialMessage.data["action"] == null ? null : initialMessage.data["action"];
  //     // selectNotification(payload);
  //   }
  // }

  changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: ThemeColor.appStyleColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark
    ));
    // registerNotification();
    // checkForInitialMessage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 800),
        builder: () => Container(
          color: Colors.grey,
          child: MultiBlocProvider(
            providers: _getProviders(),
            child: MaterialApp(
              title: 'An Phu',
              debugShowCheckedModeBanner: false,
              initialRoute:  RouteName.loginScreen,
              navigatorKey: NavKey.navKey,
              onGenerateRoute: Routes.generateRoute,
              theme: ThemeData(
                  appBarTheme: AppBarTheme(
                    backwardsCompatibility: false,
                    systemOverlayStyle: SystemUiOverlayStyle.light,
                    brightness: Brightness.dark,
                    backgroundColor: ThemeColor.clr_appBarColor,
                    iconTheme: IconThemeData(color: ThemeColor.clr_FFFFFF),
                    textTheme: TextTheme(
                      headline1: TextStyle(color: ThemeColor.clr_FFFFFF),
                      caption: TextStyle(color: ThemeColor.clr_FFFFFF),
                    ),
                  ),
                  fontFamily: 'Inter',
                  primarySwatch: Colors.blue,
                  visualDensity: VisualDensity.adaptivePlatformDensity),
              locale: _locale,
              localizationsDelegates: [
                // SLocalizationsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              localeResolutionCallback: (locale, supportedLocales) {
                if (locale == null) {
                  return supportedLocales.first;
                }

                for (final supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale.languageCode &&
                      supportedLocale.countryCode == locale.countryCode) {
                    return supportedLocale;
                  }
                }
                return supportedLocales.first;
              },
              supportedLocales: const [
                Locale(LanguageConstants.vietnamese, 'VI'),
                Locale(LanguageConstants.english, 'EN'),
              ],
            ),
          ),
        ));
  }

  List<BlocProvider> _getProviders() => [
    BlocProvider<LoginBloc>(
      create: (BuildContext context) => Injector.resolve<LoginBloc>(),
    ),
  ];
}
