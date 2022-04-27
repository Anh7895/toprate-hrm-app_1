import 'package:flutter/material.dart';
import 'package:toprate_hrm/datasource/data/local_user_data.dart';
import 'package:toprate_hrm/datasource/network/dio/api_client.dart';
import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';

import '../../../common/config/default_env.dart';
import '../model/request/login_request.dart';
import '../model/request/social_login_request.dart';
import '../model/response/login_response.dart';

class LoginDataSource {
   ApiClient apiClient;
   LoginDataSource(this.apiClient);


   Future<RAuth> socialLogin(String accessToken) async {
     AuthBuilder auth = AuthBuilder();
     auth.accessToken = accessToken;
     final response = await apiClient.getAccountApi().loginWithGoogle(auth: auth.build());
     return response.data as RAuth;
   }

   Future<OWhoAmI> getUserInfo() async {
     ApiClient apiClientOWAI = ApiClient();
     final response = await apiClientOWAI.getUserApi().getCurrentUserInformation();
     print(response.data?.username);
     return response.data as OWhoAmI;
   }

   Future<JsonObject> revokeToken({String? username}) async{
     ApiClient apiClientRefresh = ApiClient();
     final res = await apiClientRefresh.getAccountApi().revokeToken(username: username??'');
     return res.data as JsonObject;
   }

   Future<JsonObject> logout({String? username, String? uuid, String? deviceId}) async{
     final res = await apiClient.getAccountApi().logout(username: username??'', uuid: uuid??'', deviceId: deviceId ??'');
     return res.data as JsonObject;
   }


  //
  // Future<RAuth> login({String? username, String? password}) async{
  //   final res = await apiClient.getAccountApi().login(username: username??'', password: password??'');
  //   return res.data as RAuth;
  // }
  //
  // Future<JsonObject> revokeToken({String? username}) async{
  //   ApiClient apiClientRefresh = ApiClient();
  //   final res = await apiClientRefresh.getAccountApi().revokeToken(username: username??'');
  //   return res.data as JsonObject;
  // }
  //
  // Future<JsonObject> logout({String? username, String? uuid, String? deviceId}) async{
  //   final res = await apiClient.getAccountApi().logout(username: username??'', uuid: uuid??'', deviceId: deviceId??'');
  //   return res.data as JsonObject;
  // }

}
