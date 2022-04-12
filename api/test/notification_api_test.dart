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
    //Future<Notification> addNotification(CNotification cNotification) async
    test('test addNotification', () async {
      // TODO
    });

    // Get all Notification
    //
    // Get all Notification
    //
    //Future<JsonObject> getAllNotification({ String limit, String page, String orderBy, int companyId, String fromDateSendGe, String toDateSendLe }) async
    test('test getAllNotification', () async {
      // TODO
    });

    // Get by id Notification
    //
    // Get by id Notification
    //
    //Future<Notification> getByIdNotification(int id) async
    test('test getByIdNotification', () async {
      // TODO
    });

  });
}
