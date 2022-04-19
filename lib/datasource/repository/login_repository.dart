import 'package:toprate_hrm/datasource/network/network_info.dart';

class LoginRepository {
  final NetworkInfoImpl networkInfo;

  // final LoginDataSource loginDataSource;

  LoginRepository(this.networkInfo);

// Future<RAuth> login({String? username, String? password}) async {
//   if (await networkInfo.isConnected) {
//     return loginDataSource.login(username: username, password: password);
//   } else {
//     throw NetworkConnectionException();
//   }
// }
//
// Future<JsonObject> revokeToken({String? username}) async {
//   if (await networkInfo.isConnected) {
//     return loginDataSource.revokeToken(username: username);
//   } else {
//     throw NetworkConnectionException();
//   }
// }
//
// Future<JsonObject> logOut({String? username, String? uuid, String? deviceId}) async {
//   if (await networkInfo.isConnected) {
//     return loginDataSource.logout(username: username, uuid: uuid, deviceId: deviceId);
//   } else {
//     throw NetworkConnectionException();
//   }
// }

}
