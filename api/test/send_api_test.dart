import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SendApi
void main() {
  final instance = Openapi().getSendApi();

  group(SendApi, () {
    // Add Send
    //
    // Add Send
    //
    //Future<Send> addSend(Send send) async
    test('test addSend', () async {
      // TODO
    });

    // Get all Send
    //
    // Get all Send
    //
    //Future<JsonObject> getAllSend({ String limit, String page, String orderBy }) async
    test('test getAllSend', () async {
      // TODO
    });

    // get All Via ReceiverId
    //
    // get All Via ReceiverId
    //
    //Future<BuiltList<CSend>> getAllViaReceiverId(int id) async
    test('test getAllViaReceiverId', () async {
      // TODO
    });

    // Get by id Send
    //
    // Get by id Send
    //
    //Future<Send> getByIdSend(int id) async
    test('test getByIdSend', () async {
      // TODO
    });

  });
}
