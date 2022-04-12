import 'package:toprate_hrm/datasource/network/dio/api_client.dart';
import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';

class LoginDataSource {
  final ApiClient apiClient;

  LoginDataSource(this.apiClient);


  Future<RAuth> login({String? username, String? password}) async{
    final res = await apiClient.getAccountApi().login(username: username??'', password: password??'');
    return res.data as RAuth;
  }

  Future<JsonObject> revokeToken({String? username}) async{
    ApiClient apiClientRefresh = ApiClient();
    final res = await apiClientRefresh.getAccountApi().revokeToken(username: username??'');
    return res.data as JsonObject;
  }

  Future<JsonObject> logout({String? username, String? uuid, String? deviceId}) async{
    final res = await apiClient.getAccountApi().logout(username: username??'', uuid: uuid??'', deviceId: deviceId??'');
    return res.data as JsonObject;
  }

}
