import 'dart:io';
import 'package:toprate_hrm/common/config/config_const.dart';
import 'package:toprate_hrm/common/config/nav_key.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/utils/preference_utils.dart';
import 'package:toprate_hrm/ui/login/login_screen.dart';
import 'package:dio/dio.dart';
import 'package:toprate_hrm/common/config/default_env.dart';
import 'package:toprate_hrm/datasource/data/local_user_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

BaseOptions options = new BaseOptions(
  baseUrl: DefaultConfig.baseUrl,
  connectTimeout: 5000,
  receiveTimeout: 3000,
  headers: {
    "Accept": "application/json",
    "Content-Type": "application/x-www-form-urlencoded"
  },
);

class ApiClient extends Openapi {
  ApiClient()
      : super(
            dio: Dio(BaseOptions(
          baseUrl: DefaultConfig.baseUrl,
          connectTimeout: ConfigConst.connectTimeOut,
          receiveTimeout: ConfigConst.receiveTimeout,
        ))
              ..options.headers = LocalUserData.getInstance.accessToken == ''
                  ? getAuthenticationHeaderWithoutAuthor()
                  : getAuthenticationHeader()
              ..interceptors
                  .add(InterceptorsWrapper(onRequest: (options, handler) {
                print(LocalUserData.getInstance.accessToken);
                print(options.baseUrl);
                print(options.path);
                print(options.headers);
                // Do something before request is sent
                return handler.next(options); //continue
                // If you want to resolve the request with some custom data，
                // you can resolve a `Response` object eg: return `dio.resolve(response)`.
                // If you want to reject the request with a error message,
                // you can reject a `DioError` object eg: return `dio.reject(dioError)`
              }, onResponse: (response, handler) {
                print(response.statusCode);
                print(response.data);
                print(response.headers);
                print(response.statusCode);
                // Do something with response data
                return handler.next(response); // continue
                // If you want to reject the request with a error message,
                // you can reject a `DioError` object eg: return `dio.reject(dioError)`
              }, onError: (DioError e, handler) async {
                if (e.response?.statusCode == HttpStatus.unauthorized ) {
                  Openapi().dio.interceptors.requestLock.lock();
                  Openapi().dio.interceptors.requestLock.lock();

                  print("username ${LocalUserData.getInstance.user?.username}");
                  LocalUserData.getInstance.accessToken = "";
                  await saveToken("");

                  ///Renew token by refresh token keycloak
                  Map<String, String> body = {
                    'username': '${LocalUserData.getInstance.user?.username}',
                  };
                  Dio dio = new Dio(options);
                  Response? responseToken;
                  try {
                    responseToken = await dio.post(
                      'refresh-token',
                      data: body,
                    );
                    print("token  ${responseToken.data['access_token']}");
                  } on DioError catch (e) {
                    if (e.response?.statusCode == HttpStatus.badRequest ||
                        e.response?.statusCode == HttpStatus.unauthorized ||
                        e.response?.statusCode == HttpStatus.forbidden) {
                      if (NavKey.navKey.currentContext != null) {
                        Navigator.of(NavKey.navKey.currentContext!).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                                (Route<dynamic> route) => false);
                      }
                    }
                  } catch (e) {}

                  ///Save token
                  if (responseToken != null) {
                    LocalUserData.getInstance.accessToken =
                        responseToken.data['access_token'];
                    await saveToken(responseToken.data['access_token']);
                    LocalUserData.getInstance.refreshToken =
                        responseToken.data['refresh_token'];
                    await saveRefreshToken(responseToken.data['refresh_token']);
                  }

                  ///Continue request
                  RequestOptions requestOptions = e.requestOptions;

                  final opts = new Options(
                      method: requestOptions.method,
                      headers: getAuthenticationHeader());

                  Openapi().dio.options.headers["Authorization"] =
                      "Bearer " + LocalUserData.getInstance.accessToken;

                  Openapi().dio.options.headers["Accept"] = "*/*";

                  Openapi().dio.interceptors.requestLock.unlock();
                  Openapi().dio.interceptors.responseLock.unlock();

                  print(
                      "Datad dasdsadasds ${LocalUserData.getInstance.accessToken.length}");
                  // dio.lock();

                  try {
                    final response = await dio.request(
                        requestOptions.baseUrl + requestOptions.path,
                        options: opts,
                        cancelToken: requestOptions.cancelToken,
                        onReceiveProgress: requestOptions.onReceiveProgress,
                        queryParameters: requestOptions.queryParameters);

                    if (response != null) {
                      handler.resolve(response);
                    } else {
                      return handler.next(e);
                    }
                  } catch (err) {
                    return handler.next(e);
                  }
                }
                if(e.response?.statusCode == HttpStatus.forbidden){
                  Navigator.of(NavKey.navKey.currentContext!).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                          (Route<dynamic> route) => false);
                }
                return handler.next(e); //continue
              })));

  static Map<String, String> getAuthenticationHeaderWithoutAuthor() {
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Accept-Language': '${LocalUserData.getInstance.defaultLanguage}'
    };
  }

  static Map<String, String> getAuthenticationHeader() {
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      // 'Authorization':
      //     'eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJoMXQ1V1piM3h5WDd3LXp0OWo2b3RrdjZUZkxvT29icjZOSVhxMV9LekxRIn0.eyJleHAiOjE2NDgwNTYzMTIsImlhdCI6MTY0ODAyMDMxMiwianRpIjoiMTFlOWQxNDItYzU5ZC00ZTEyLWI2OGQtMWQ5YTllOWQ2OGQwIiwiaXNzIjoiaHR0cHM6Ly9pYW0taHIudG9wcmF0ZS5pby9hdXRoL3JlYWxtcy9tYXN0ZXIiLCJhdWQiOiJhY2NvdW50Iiwic3ViIjoiNzJhYTNkZGItMTc2MS00NzI3LWFmYzAtOGY5MWFlZTg4YzgzIiwidHlwIjoiQmVhcmVyIiwiYXpwIjoibG9naW4iLCJzZXNzaW9uX3N0YXRlIjoiMDBiOTFiNDktMGY4ZC00NTRmLWI1YTYtNmRmMDY4Y2ZlNDUzIiwiYWNyIjoiMSIsInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJkZWZhdWx0LXJvbGVzLW1hc3RlciIsIm9mZmxpbmVfYWNjZXNzIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6ImVtYWlsIHByb2ZpbGUiLCJzaWQiOiIwMGI5MWI0OS0wZjhkLTQ1NGYtYjVhNi02ZGYwNjhjZmU0NTMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwicHJlZmVycmVkX3VzZXJuYW1lIjoibmd1eWVudGhpcXVlYW5oMSIsImVtYWlsIjoibmd1eWVucXVlYW5oNjRAZ21haWwuY29tIn0.g92SNTl7wkUa0IculmK4Kova4yq55nBJFyhgp6Q-WqA4CnE-gwVrHli85znJVI8oRXSyhLPN4_tJU6S-OBaXWi4UfZWOaXEjm_v9cPf5xq-w0892q6ZI_ziJfMqK8dvBPYb24xzQOgz9BD9NdzAkB2HxnITd4ee8RDRHez9VDdTFeGQ3OY59nfSpHBCnLJkD4v9cgRijqJUFZpLB9a8STr_WB0q2JPS6h_YU8NSDJQqjn_Lvn0MRBd-YdVKlg8RFTMyONUe3AsVUK0_TXDOriD8sZAlBtmt4PNeFH8NaTdUkehFyXVsSG0ejBtZKFdzn5U1CXVAqdcUyWSAKOPmFQA',
      'Authorization': 'Bearer ${LocalUserData.getInstance.accessToken}',
      'Accept-Language': '${LocalUserData.getInstance.defaultLanguage}'
    };
  }
}

//Save Token Login
saveToken(String? accessToken) async {
  return await PreferenceUtils.setString("access_token", accessToken ?? "");
}

//Save Refresh Token
saveRefreshToken(String? refreshToken) async {
  return await PreferenceUtils.setString("refresh_token", refreshToken ?? "");
}
