# openapi.api.AccountApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](AccountApi.md#login) | **POST** /auth/login | Sign in
[**logout**](AccountApi.md#logout) | **POST** /logout | Sign out
[**refreshToken**](AccountApi.md#refreshtoken) | **POST** /refresh-token | Refresh Token
[**revokeToken**](AccountApi.md#revoketoken) | **POST** /revoke-token | Revoke Token


# **login**
> RAuth login(username, password)

Sign in

Login user the system

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();
final String username = username_example; // String | 
final String password = password_example; // String | 

try {
    final response = api.login(username, password);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | [default to 'admin']
 **password** | **String**|  | 

### Return type

[**RAuth**](RAuth.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> JsonObject logout(username, uuid, deviceId)

Sign out

Logout user the system

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();
final String username = username_example; // String | 
final String uuid = uuid_example; // String | 
final String deviceId = deviceId_example; // String | 

try {
    final response = api.logout(username, uuid, deviceId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->logout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | [default to 'admin']
 **uuid** | **String**|  | 
 **deviceId** | **String**|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshToken**
> RAuth refreshToken(username)

Refresh Token

Refresh Token

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAccountApi();
final String username = username_example; // String | 

try {
    final response = api.refreshToken(username);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->refreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | [default to 'admin']

### Return type

[**RAuth**](RAuth.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeToken**
> JsonObject revokeToken(username)

Revoke Token

Revoke Token

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getAccountApi();
final String username = username_example; // String | 

try {
    final response = api.revokeToken(username);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->revokeToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | [default to 'admin']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

