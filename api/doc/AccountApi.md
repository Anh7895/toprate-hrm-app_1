# openapi.api.AccountApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-thrm.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginWithGoogle**](AccountApi.md#loginwithgoogle) | **POST** /auth/google | Login With Google


# **loginWithGoogle**
> RAuth loginWithGoogle(auth)

Login With Google

Login With Google

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();
final Auth auth = ; // Auth | 

try {
    final response = api.loginWithGoogle(auth);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->loginWithGoogle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth** | [**Auth**](Auth.md)|  | 

### Return type

[**RAuth**](RAuth.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

