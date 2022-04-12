# openapi.api.GeneralTimekeepingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGeneralTimekeeping**](GeneralTimekeepingApi.md#addgeneraltimekeeping) | **POST** /generaltimekeepings | Add GeneralTimekeeping
[**deleteByIdGeneralTimekeeping**](GeneralTimekeepingApi.md#deletebyidgeneraltimekeeping) | **DELETE** /generaltimekeepings/{id} | Delete by id GeneralTimekeeping
[**deleteByIdsGeneralTimekeeping**](GeneralTimekeepingApi.md#deletebyidsgeneraltimekeeping) | **DELETE** /generaltimekeepings/delete/ids | Delete by ids GeneralTimekeeping
[**deleteByUuidGeneralTimekeeping**](GeneralTimekeepingApi.md#deletebyuuidgeneraltimekeeping) | **DELETE** /generaltimekeepings/uuid/{uuid} | Delete by uuid GeneralTimekeeping
[**deleteByUuidsGeneralTimekeeping**](GeneralTimekeepingApi.md#deletebyuuidsgeneraltimekeeping) | **DELETE** /generaltimekeepings/delete/uuids | Delete by uuids GeneralTimekeeping
[**getAllGeneralTimekeeping**](GeneralTimekeepingApi.md#getallgeneraltimekeeping) | **GET** /generaltimekeepings | Get all GeneralTimekeeping
[**getByIdGeneralTimekeeping**](GeneralTimekeepingApi.md#getbyidgeneraltimekeeping) | **GET** /generaltimekeepings/{id} | Get by id GeneralTimekeeping
[**patchUpdateGeneralTimekeeping**](GeneralTimekeepingApi.md#patchupdategeneraltimekeeping) | **PATCH** /generaltimekeepings/{id} | Update patch GeneralTimekeeping
[**putUpdateGeneralTimekeeping**](GeneralTimekeepingApi.md#putupdategeneraltimekeeping) | **PUT** /generaltimekeepings/{id} | Update put GeneralTimekeeping


# **addGeneralTimekeeping**
> GeneralTimekeeping addGeneralTimekeeping(generalTimekeeping)

Add GeneralTimekeeping

Add GeneralTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getGeneralTimekeepingApi();
final GeneralTimekeeping generalTimekeeping = ; // GeneralTimekeeping | 

try {
    final response = api.addGeneralTimekeeping(generalTimekeeping);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralTimekeepingApi->addGeneralTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generalTimekeeping** | [**GeneralTimekeeping**](GeneralTimekeeping.md)|  | 

### Return type

[**GeneralTimekeeping**](GeneralTimekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByIdGeneralTimekeeping**
> JsonObject deleteByIdGeneralTimekeeping(id)

Delete by id GeneralTimekeeping

Delete by id GeneralTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getGeneralTimekeepingApi();
final int id = 56; // int | Id

try {
    final response = api.deleteByIdGeneralTimekeeping(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralTimekeepingApi->deleteByIdGeneralTimekeeping: $e\n');
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

# **deleteByIdsGeneralTimekeeping**
> JsonObject deleteByIdsGeneralTimekeeping(propertyID)

Delete by ids GeneralTimekeeping

Delete by ids GeneralTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getGeneralTimekeepingApi();
final PropertyID propertyID = ; // PropertyID | 

try {
    final response = api.deleteByIdsGeneralTimekeeping(propertyID);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralTimekeepingApi->deleteByIdsGeneralTimekeeping: $e\n');
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

# **deleteByUuidGeneralTimekeeping**
> JsonObject deleteByUuidGeneralTimekeeping(uuid)

Delete by uuid GeneralTimekeeping

Delete by uuid GeneralTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getGeneralTimekeepingApi();
final String uuid = uuid_example; // String | Uuid

try {
    final response = api.deleteByUuidGeneralTimekeeping(uuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralTimekeepingApi->deleteByUuidGeneralTimekeeping: $e\n');
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

# **deleteByUuidsGeneralTimekeeping**
> JsonObject deleteByUuidsGeneralTimekeeping(propertyUuid)

Delete by uuids GeneralTimekeeping

Delete by ids GeneralTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getGeneralTimekeepingApi();
final PropertyUuid propertyUuid = ; // PropertyUuid | 

try {
    final response = api.deleteByUuidsGeneralTimekeeping(propertyUuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralTimekeepingApi->deleteByUuidsGeneralTimekeeping: $e\n');
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

# **getAllGeneralTimekeeping**
> JsonObject getAllGeneralTimekeeping(limit, page, orderBy)

Get all GeneralTimekeeping

Get all GeneralTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getGeneralTimekeepingApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllGeneralTimekeeping(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralTimekeepingApi->getAllGeneralTimekeeping: $e\n');
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

# **getByIdGeneralTimekeeping**
> GeneralTimekeeping getByIdGeneralTimekeeping(id)

Get by id GeneralTimekeeping

Get by id GeneralTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getGeneralTimekeepingApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdGeneralTimekeeping(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralTimekeepingApi->getByIdGeneralTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**GeneralTimekeeping**](GeneralTimekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateGeneralTimekeeping**
> GeneralTimekeeping patchUpdateGeneralTimekeeping(id, generalTimekeeping)

Update patch GeneralTimekeeping

Update patch GeneralTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getGeneralTimekeepingApi();
final int id = 56; // int | Id
final GeneralTimekeeping generalTimekeeping = ; // GeneralTimekeeping | 

try {
    final response = api.patchUpdateGeneralTimekeeping(id, generalTimekeeping);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralTimekeepingApi->patchUpdateGeneralTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **generalTimekeeping** | [**GeneralTimekeeping**](GeneralTimekeeping.md)|  | 

### Return type

[**GeneralTimekeeping**](GeneralTimekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUpdateGeneralTimekeeping**
> GeneralTimekeeping putUpdateGeneralTimekeeping(id, generalTimekeeping)

Update put GeneralTimekeeping

Update put GeneralTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getGeneralTimekeepingApi();
final int id = 56; // int | Id
final GeneralTimekeeping generalTimekeeping = ; // GeneralTimekeeping | 

try {
    final response = api.putUpdateGeneralTimekeeping(id, generalTimekeeping);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralTimekeepingApi->putUpdateGeneralTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **generalTimekeeping** | [**GeneralTimekeeping**](GeneralTimekeeping.md)|  | 

### Return type

[**GeneralTimekeeping**](GeneralTimekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

