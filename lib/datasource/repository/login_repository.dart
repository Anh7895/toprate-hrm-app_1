import 'package:dio/dio.dart';
import 'package:built_value/json_object.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/datasource/network/network_info.dart';

import '../../common/exceptions/network_connection_exception.dart';
import '../data/model/request/social_login_request.dart';
import '../data/model/response/login_response.dart';
import '../data/remote/login_datasource.dart';

class LoginRepository {
  final NetworkInfoImpl networkInfo;

   final LoginDataSource loginDataSource;

  LoginRepository(this.networkInfo, this.loginDataSource);
  Future<RAuth> socialLogin(String accessToken) async {
    if (await networkInfo.isConnected) {
      return loginDataSource.socialLogin(accessToken);
    } else {
      throw NetworkConnectionException();
    }
  }
  Future userInfo()async{
    if (await networkInfo.isConnected) {
      return loginDataSource.getUserInfo() ;
    } else {
      throw NetworkConnectionException();
    }
  }

  Future<JsonObject> logOut({String? username, String? uuid, String? deviceId}) async {
    if (await networkInfo.isConnected) {
      return loginDataSource.logout(username: username, uuid: uuid,deviceId: deviceId);
    } else {
      throw NetworkConnectionException();
    }
  }

  Future<Future<Response<JsonObject>>> addDeviceToken(DeviceToken deviceToken) async {
    if (await networkInfo.isConnected) {
      return loginDataSource.addDeviceToken(deviceToken);
    } else {
      throw NetworkConnectionException();
    }
  }
 }


// Future<JsonObject> revokeToken({String? username}) async {
//   if (await networkInfo.isConnected) {
//     return loginDataSource.revokeToken(username: username);
//   } else {
//     throw NetworkConnectionException();
//   }
// }
//

