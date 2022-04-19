# openapi.api.TimekeepingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-thrm.toprate.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTimekeeping**](TimekeepingApi.md#addtimekeeping) | **POST** /timekeepings | Add Timekeeping
[**deleteByIdTimekeeping**](TimekeepingApi.md#deletebyidtimekeeping) | **DELETE** /timekeepings/{id} | Delete by id Timekeeping
[**deleteByIdsTimekeeping**](TimekeepingApi.md#deletebyidstimekeeping) | **DELETE** /timekeepings/delete/ids | Delete by ids Timekeeping
[**deleteByUuidTimekeeping**](TimekeepingApi.md#deletebyuuidtimekeeping) | **DELETE** /timekeepings/uuid/{uuid} | Delete by uuid Timekeeping
[**deleteByUuidsTimekeeping**](TimekeepingApi.md#deletebyuuidstimekeeping) | **DELETE** /timekeepings/delete/uuids | Delete by uuids Timekeeping
[**getAllTimekeeping**](TimekeepingApi.md#getalltimekeeping) | **GET** /timekeepings | Get all Timekeeping
[**getByIdTimekeeping**](TimekeepingApi.md#getbyidtimekeeping) | **GET** /timekeepings/{id} | Get by id Timekeeping
[**patchUpdateTimekeeping**](TimekeepingApi.md#patchupdatetimekeeping) | **PATCH** /timekeepings/{id} | Update patch Timekeeping
[**putUpdateTimekeeping**](TimekeepingApi.md#putupdatetimekeeping) | **PUT** /timekeepings/{id} | Update put Timekeeping


# **addTimekeeping**
> JsonObject addTimekeeping(body)

Add Timekeeping

Add Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final JsonObject body = ; // JsonObject | 

try {
    final response = api.addTimekeeping(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->addTimekeeping: $e\n');
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

# **deleteByIdTimekeeping**
> JsonObject deleteByIdTimekeeping(id)

Delete by id Timekeeping

Delete by id Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final int id = 56; // int | Id

try {
    final response = api.deleteByIdTimekeeping(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->deleteByIdTimekeeping: $e\n');
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

# **deleteByIdsTimekeeping**
> JsonObject deleteByIdsTimekeeping(propertyID)

Delete by ids Timekeeping

Delete by ids Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final PropertyID propertyID = ; // PropertyID | 

try {
    final response = api.deleteByIdsTimekeeping(propertyID);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->deleteByIdsTimekeeping: $e\n');
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

# **deleteByUuidTimekeeping**
> JsonObject deleteByUuidTimekeeping(uuid)

Delete by uuid Timekeeping

Delete by uuid Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final String uuid = uuid_example; // String | Uuid

try {
    final response = api.deleteByUuidTimekeeping(uuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->deleteByUuidTimekeeping: $e\n');
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

# **deleteByUuidsTimekeeping**
> JsonObject deleteByUuidsTimekeeping(propertyUuid)

Delete by uuids Timekeeping

Delete by ids Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final PropertyUuid propertyUuid = ; // PropertyUuid | 

try {
    final response = api.deleteByUuidsTimekeeping(propertyUuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->deleteByUuidsTimekeeping: $e\n');
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

# **getAllTimekeeping**
> JsonObject getAllTimekeeping(limit, page, orderBy)

Get all Timekeeping

Get all Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllTimekeeping(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->getAllTimekeeping: $e\n');
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

# **getByIdTimekeeping**
> JsonObject getByIdTimekeeping(id)

Get by id Timekeeping

Get by id Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdTimekeeping(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->getByIdTimekeeping: $e\n');
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

# **patchUpdateTimekeeping**
> JsonObject patchUpdateTimekeeping(id, body)

Update patch Timekeeping

Update patch Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final int id = 56; // int | Id
final JsonObject body = ; // JsonObject | 

try {
    final response = api.patchUpdateTimekeeping(id, body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->patchUpdateTimekeeping: $e\n');
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

# **putUpdateTimekeeping**
> JsonObject putUpdateTimekeeping(id, body)

Update put Timekeeping

Update put Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final int id = 56; // int | Id
final JsonObject body = ; // JsonObject | 

try {
    final response = api.putUpdateTimekeeping(id, body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->putUpdateTimekeeping: $e\n');
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

