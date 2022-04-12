import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AccountApi
void main() {
  final instance = Openapi().getAccountApi();

  group(AccountApi, () {
    // Sign in
    //
    // Login user the system
    //
    //Future<RAuth> login(String username, String password) async
    test('test login', () async {
      // TODO
    });

    // Sign out
    //
    // Logout user the system
    //
    //Future<JsonObject> logout(String username, String uuid) async
    test('test logout', () async {
      // TODO
    });

    // Refresh Token
    //
    // Refresh Token
    //
    //Future<RAuth> refreshToken(String username) async
    test('test refreshToken', () async {
      // TODO
    });

    // Revoke Token
    //
    // Revoke Token
    //
    //Future<JsonObject> revokeToken(String username) async
    test('test revokeToken', () async {
      // TODO
    });

  });
}
