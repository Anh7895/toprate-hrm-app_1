# openapi.api.UsersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUser**](UsersApi.md#adduser) | **POST** /users | Add UserService
[**forgotPassword**](UsersApi.md#forgotpassword) | **POST** /forgot-password | Forgot Password
[**getAllUser**](UsersApi.md#getalluser) | **GET** /users | Get all UserService
[**getByCodedUser**](UsersApi.md#getbycodeduser) | **GET** /users/{code}/info | getByCodedUser
[**getByIdUser**](UsersApi.md#getbyiduser) | **GET** /users/{id} | Get by id UserService
[**getCurrentUserInformation**](UsersApi.md#getcurrentuserinformation) | **GET** /who-am-i | Get current user information
[**getInfoSalaryByUser**](UsersApi.md#getinfosalarybyuser) | **GET** /users/{id}/get-info-salary | Get Info Salary By User
[**getLetterByUser**](UsersApi.md#getletterbyuser) | **GET** /users/letters | Get Letter By User
[**patchUpdateUser**](UsersApi.md#patchupdateuser) | **PATCH** /users/{id} | Update patch UserService
[**updatePassword**](UsersApi.md#updatepassword) | **POST** /users/update-password | Update Password


# **addUser**
> User addUser(user)

Add UserService

Add UserService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUsersApi();
final User user = ; // User | 

try {
    final response = api.addUser(user);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->addUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgotPassword**
> InlineResponse200 forgotPassword(forgotPassword)

Forgot Password

Forgot Password

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUsersApi();
final ForgotPassword forgotPassword = ; // ForgotPassword | 

try {
    final response = api.forgotPassword(forgotPassword);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->forgotPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPassword** | [**ForgotPassword**](ForgotPassword.md)|  | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUser**
> JsonObject getAllUser(limit, page, orderBy)

Get all UserService

Get all UserService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUsersApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllUser(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->getAllUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByCodedUser**
> User getByCodedUser(code)

getByCodedUser

getByCodedUser

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUsersApi();
final String code = code_example; // String | code

try {
    final response = api.getByCodedUser(code);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->getByCodedUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| code | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdUser**
> User getByIdUser(id)

Get by id UserService

Get by id UserService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUsersApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdUser(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->getByIdUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentUserInformation**
> OWhoAmI getCurrentUserInformation()

Get current user information

Get current user information

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUsersApi();

try {
    final response = api.getCurrentUserInformation();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->getCurrentUserInformation: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OWhoAmI**](OWhoAmI.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInfoSalaryByUser**
> InfoSalaryByUser getInfoSalaryByUser(id, month)

Get Info Salary By User

Get Info Salary By User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUsersApi();
final int id = 56; // int | Id
final String month = month_example; // String | month

try {
    final response = api.getInfoSalaryByUser(id, month);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->getInfoSalaryByUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **month** | **String**| month | [optional] [default to '03-2022']

### Return type

[**InfoSalaryByUser**](InfoSalaryByUser.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLetterByUser**
> BuiltList<Letter> getLetterByUser()

Get Letter By User

Get Letter By User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUsersApi();

try {
    final response = api.getLetterByUser();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->getLetterByUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Letter&gt;**](Letter.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateUser**
> User patchUpdateUser(id, user)

Update patch UserService

Update patch UserService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUsersApi();
final int id = 56; // int | Id
final User user = ; // User | 

try {
    final response = api.patchUpdateUser(id, user);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->patchUpdateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **user** | [**User**](User.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePassword**
> InlineResponse200 updatePassword(updatePassword)

Update Password

Update Password

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUsersApi();
final UpdatePassword updatePassword = ; // UpdatePassword | 

try {
    final response = api.updatePassword(updatePassword);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UsersApi->updatePassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updatePassword** | [**UpdatePassword**](UpdatePassword.md)|  | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

