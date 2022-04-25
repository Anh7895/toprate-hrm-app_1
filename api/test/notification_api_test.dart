import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for NotificationApi
void main() {
  final instance = Openapi().getNotificationApi();

  group(NotificationApi, () {
    // Add Notification
    //
    // Add Notification
    //
    //Future<Notification> addNotification(Notification notification) async
    test('test addNotification', () async {
      // TODO
    });

    // Get all Notification
    //
    // Get all Notification
    //
    //Future<JsonObject> getAllNotification({ String limit, String page, String orderBy }) async
    test('test getAllNotification', () async {
      // TODO
    });

    // Get by id Notifications
    //
    // Get by id Notifications
    //
    //Future<Project> getByIdNotification(int id) async
    test('test getByIdNotification', () async {
      // TODO
    });

    // Update patch Notification
    //
    // Update patch Notification
    //
    //Future<Notification> patchUpdateNotification(int id, Notification notification) async
    test('test patchUpdateNotification', () async {
      // TODO
    });

  });
}
