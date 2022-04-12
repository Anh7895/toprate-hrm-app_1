# openapi.api.PermissionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPermission**](PermissionApi.md#addpermission) | **POST** /permissions | Add Permission
[**deleteByIdPermission**](PermissionApi.md#deletebyidpermission) | **DELETE** /permissions/{id} | Delete by id Permission
[**deleteByIdsPermission**](PermissionApi.md#deletebyidspermission) | **DELETE** /permissions/delete/ids | Delete by ids Permission
[**deleteByUuidPermission**](PermissionApi.md#deletebyuuidpermission) | **DELETE** /permissions/uuid/{uuid} | Delete by uuid Permission
[**deleteByUuidsPermission**](PermissionApi.md#deletebyuuidspermission) | **DELETE** /permissions/delete/uuids | Delete by uuids Permission
[**getAllPermission**](PermissionApi.md#getallpermission) | **GET** /permissions | Get all Permission
[**getByIdPermission**](PermissionApi.md#getbyidpermission) | **GET** /permissions/{id} | Get by id Permission
[**patchUpdatePermission**](PermissionApi.md#patchupdatepermission) | **PATCH** /permissions/{id} | Update patch Permission
[**putUpdatePermission**](PermissionApi.md#putupdatepermission) | **PUT** /permissions/{id} | Update put Permission


# **addPermission**
> Permission addPermission(permission)

Add Permission

Add Permission

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPermissionApi();
final Permission permission = ; // Permission | 

try {
    final response = api.addPermission(permission);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PermissionApi->addPermission: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | [**Permission**](Permission.md)|  | 

### Return type

[**Permission**](Permission.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByIdPermission**
> JsonObject deleteByIdPermission(id)

Delete by id Permission

Delete by id Permission

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPermissionApi();
final int id = 56; // int | Id

try {
    final response = api.deleteByIdPermission(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PermissionApi->deleteByIdPermission: $e\n');
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

# **deleteByIdsPermission**
> JsonObject deleteByIdsPermission(propertyID)

Delete by ids Permission

Delete by ids Permission

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPermissionApi();
final PropertyID propertyID = ; // PropertyID | 

try {
    final response = api.deleteByIdsPermission(propertyID);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PermissionApi->deleteByIdsPermission: $e\n');
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

# **deleteByUuidPermission**
> JsonObject deleteByUuidPermission(uuid)

Delete by uuid Permission

Delete by uuid Permission

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPermissionApi();
final String uuid = uuid_example; // String | Uuid

try {
    final response = api.deleteByUuidPermission(uuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PermissionApi->deleteByUuidPermission: $e\n');
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

# **deleteByUuidsPermission**
> JsonObject deleteByUuidsPermission(propertyUuid)

Delete by uuids Permission

Delete by ids Permission

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPermissionApi();
final PropertyUuid propertyUuid = ; // PropertyUuid | 

try {
    final response = api.deleteByUuidsPermission(propertyUuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PermissionApi->deleteByUuidsPermission: $e\n');
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

# **getAllPermission**
> JsonObject getAllPermission(limit, page, orderBy)

Get all Permission

Get all Permission

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPermissionApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllPermission(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PermissionApi->getAllPermission: $e\n');
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

# **getByIdPermission**
> Permission getByIdPermission(id)

Get by id Permission

Get by id Permission

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPermissionApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdPermission(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PermissionApi->getByIdPermission: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Permission**](Permission.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdatePermission**
> Permission patchUpdatePermission(id, permission)

Update patch Permission

Update patch Permission

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPermissionApi();
final int id = 56; // int | Id
final Permission permission = ; // Permission | 

try {
    final response = api.patchUpdatePermission(id, permission);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PermissionApi->patchUpdatePermission: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **permission** | [**Permission**](Permission.md)|  | 

### Return type

[**Permission**](Permission.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUpdatePermission**
> Permission putUpdatePermission(id, permission)

Update put Permission

Update put Permission

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPermissionApi();
final int id = 56; // int | Id
final Permission permission = ; // Permission | 

try {
    final response = api.putUpdatePermission(id, permission);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PermissionApi->putUpdatePermission: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **permission** | [**Permission**](Permission.md)|  | 

### Return type

[**Permission**](Permission.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

