import 'package:toprate_hrm/datasource/network/network_info.dart';
import 'package:toprate_hrm/common/exceptions/network_connection_exception.dart';
import 'package:toprate_hrm/datasource/data/model/request/login_request.dart';
import 'package:toprate_hrm/datasource/data/model/response/login_response.dart';
import 'package:toprate_hrm/datasource/data/remote/login_datasource.dart';
import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';

class LoginRepository {
  final NetworkInfoImpl networkInfo;
  final LoginDataSource loginDataSource;

  LoginRepository(this.loginDataSource, this.networkInfo);


  Future<RAuth> login({String? username, String? password}) async {
    if (await networkInfo.isConnected) {
      return loginDataSource.login(username: username, password: password);
    } else {
      throw NetworkConnectionException();
    }
  }

  Future<JsonObject> revokeToken({String? username}) async {
    if (await networkInfo.isConnected) {
      return loginDataSource.revokeToken(username: username);
    } else {
      throw NetworkConnectionException();
    }
  }

  Future<JsonObject> logOut({String? username, String? uuid, String? deviceId}) async {
    if (await networkInfo.isConnected) {
      return loginDataSource.logout(username: username, uuid: uuid, deviceId: deviceId);
    } else {
      throw NetworkConnectionException();
    }
  }


}
