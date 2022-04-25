# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-thrm.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUser**](UserApi.md#adduser) | **POST** /users | Add User
[**deleteByIdUser**](UserApi.md#deletebyiduser) | **DELETE** /users/{id} | Delete by id User
[**deleteByIdsUser**](UserApi.md#deletebyidsuser) | **DELETE** /users/delete/ids | Delete by ids User
[**deleteByUuidUser**](UserApi.md#deletebyuuiduser) | **DELETE** /users/uuid/{uuid} | Delete by uuid User
[**deleteByUuidsUser**](UserApi.md#deletebyuuidsuser) | **DELETE** /users/delete/uuids | Delete by uuids User
[**getAllUser**](UserApi.md#getalluser) | **GET** /users | Get all User
[**getByIdUser**](UserApi.md#getbyiduser) | **GET** /users/{id} | Get by id User
[**patchUpdateUser**](UserApi.md#patchupdateuser) | **PATCH** /users/{id} | Update patch User
[**putUpdateUser**](UserApi.md#putupdateuser) | **PUT** /users/{id} | Update put User


# **addUser**
> JsonObject addUser(body)

Add User

Add User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final JsonObject body = ; // JsonObject | 

try {
    final response = api.addUser(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->addUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByIdUser**
> JsonObject deleteByIdUser(id)

Delete by id User

Delete by id User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final int id = 56; // int | Id

try {
    final response = api.deleteByIdUser(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->deleteByIdUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByIdsUser**
> JsonObject deleteByIdsUser(propertyID)

Delete by ids User

Delete by ids User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final PropertyID propertyID = ; // PropertyID | 

try {
    final response = api.deleteByIdsUser(propertyID);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->deleteByIdsUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyID** | [**PropertyID**](PropertyID.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByUuidUser**
> JsonObject deleteByUuidUser(uuid)

Delete by uuid User

Delete by uuid User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final String uuid = uuid_example; // String | Uuid

try {
    final response = api.deleteByUuidUser(uuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->deleteByUuidUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| Uuid | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByUuidsUser**
> JsonObject deleteByUuidsUser(propertyUuid)

Delete by uuids User

Delete by ids User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final PropertyUuid propertyUuid = ; // PropertyUuid | 

try {
    final response = api.deleteByUuidsUser(propertyUuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->deleteByUuidsUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyUuid** | [**PropertyUuid**](PropertyUuid.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUser**
> JsonObject getAllUser(limit, page, orderBy)

Get all User

Get all User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllUser(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->getAllUser: $e\n');
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

# **getByIdUser**
> JsonObject getByIdUser(id)

Get by id User

Get by id User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdUser(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->getByIdUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateUser**
> JsonObject patchUpdateUser(id, body)

Update patch User

Update patch User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final int id = 56; // int | Id
final JsonObject body = ; // JsonObject | 

try {
    final response = api.patchUpdateUser(id, body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->patchUpdateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUpdateUser**
> JsonObject putUpdateUser(id, body)

Update put User

Update put User

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getUserApi();
final int id = 56; // int | Id
final JsonObject body = ; // JsonObject | 

try {
    final response = api.putUpdateUser(id, body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->putUpdateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

