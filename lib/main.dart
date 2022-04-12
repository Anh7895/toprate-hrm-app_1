import 'package:toprate_hrm/common/config/nav_key.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/ui/app.dart';
import 'package:toprate_hrm/ui/dashboard/dashboard_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'blocs/supervisor_bloc/supervisor_bloc.dart';
import 'common/config/routers_name.dart';
import 'common/injector/injector_config.dart';

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   await Firebase.initializeApp();
//   showNotification(message);
//   print("Handling a background message: ${message.messageId}");
// }
//
// /// Create a [AndroidNotificationChannel] for heads up notifications
// late AndroidNotificationChannel channel;
//
// /// Initialize the [FlutterLocalNotificationsPlugin] package.
// late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  InjectorConfig.setup();

  Bloc.observer = AppBlocObserver();

//
//   // Set the background messaging handler early on, as a named top-level function
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//
//   if (!kIsWeb) {
//     channel = const AndroidNotificationChannel(
//       'high_importance_channel', // id
//       'High Importance Notifications', // title
//       description: 'This channel is used for important notifications.',
//       // description
//       importance: Importance.high,
//     );
//
//     flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//
//     /// Create an Android Notification Channel.
//     ///
//     /// We use this channel in the `AndroidManifest.xml` file to override the
//     /// default FCM channel to enable heads up notifications.
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//
//     /// Update the iOS foreground notification presentation options to allow
//     /// heads up notifications.
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//   }
//
//   // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
//   const AndroidInitializationSettings initializationSettingsAndroid =
//       AndroidInitializationSettings('ic_notification');
//   final IOSInitializationSettings initializationSettingsIOS =
//       IOSInitializationSettings(
//           onDidReceiveLocalNotification: onDidReceiveLocalNotification);
//   final MacOSInitializationSettings initializationSettingsMacOS =
//       MacOSInitializationSettings();
//   final InitializationSettings initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//       macOS: initializationSettingsMacOS);
//   await flutterLocalNotificationsPlugin.initialize(initializationSettings,
//       onSelectNotification: selectNotification);
//   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//     print("FirebaseMessaging.onMessage.listen");
//     showNotification(message);
//   });
//
//   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//     print('A new onMessageOpenedApp event was published!');
//   });
// // Get the token each time the application loads
//   String? token = await FirebaseMessaging.instance.getToken();
//   print("Token Firebase $token");
//
//   // await fcmSubscribe();
//
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: ThemeColor.appStyleColor,
//   ));
//
//   await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
//       .then((_) => runApp(
//             BaseApp(),
//           ));
// }
//
// fcmSubscribe() async{
//   await FirebaseMessaging.instance.subscribeToTopic('TopicToListen');
// }
//
// void fcmUnSubscribe() async{
//   await FirebaseMessaging.instance.unsubscribeFromTopic('TopicToListen');
// }
//
// void showNotification(RemoteMessage message) {
//   print("Remote message ${message.data} ${message.notification}");
//   String payload = message.data["action"] == null ? null : message.data["action"];
//   RemoteNotification? notification = message.notification;
//   AndroidNotification? android = message.notification?.android;
//   if (notification != null && android != null && !kIsWeb) {
//     flutterLocalNotificationsPlugin.show(
//         notification.hashCode,
//         notification.title,
//         notification.body,
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//             channel.id,
//             channel.name,
//             color: Colors.white,
//             channelDescription: channel.description,
//           ),
//         ),
//         payload: payload);
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
//             MaterialPageRoute(builder: (context) => DashboardScreen(index: 0)), (Route<dynamic> route) => false);
//         break;
//       case 'TIMEKEEPING_FCM':
//       case 'EXPIRY_TIMEKEEPING_FCM':
//       Navigator.of(NavKey.navKey.currentContext!).pushAndRemoveUntil(
//           MaterialPageRoute(builder: (context) => DashboardScreen(index: 1)), (Route<dynamic> route) => false);
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
//
//     }
//   }
}