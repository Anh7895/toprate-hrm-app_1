# openapi.api.SettingBlockApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-thrm.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSettingBlock**](SettingBlockApi.md#addsettingblock) | **POST** /setting-blocks | Add SettingBlock
[**deleteByIdSettingBlock**](SettingBlockApi.md#deletebyidsettingblock) | **DELETE** /setting-blocks/{id} | Delete by id SettingBlock
[**deleteByIdsSettingBlock**](SettingBlockApi.md#deletebyidssettingblock) | **DELETE** /setting-blocks/delete/ids | Delete by ids SettingBlock
[**deleteByUuidSettingBlock**](SettingBlockApi.md#deletebyuuidsettingblock) | **DELETE** /setting-blocks/uuid/{uuid} | Delete by uuid SettingBlock
[**deleteByUuidsSettingBlock**](SettingBlockApi.md#deletebyuuidssettingblock) | **DELETE** /setting-blocks/delete/uuids | Delete by uuids SettingBlock
[**getAllSettingBlock**](SettingBlockApi.md#getallsettingblock) | **GET** /setting-blocks | Get all SettingBlock
[**getByIdSettingBlock**](SettingBlockApi.md#getbyidsettingblock) | **GET** /setting-blocks/{id} | Get by id SettingBlock
[**patchUpdateSettingBlock**](SettingBlockApi.md#patchupdatesettingblock) | **PATCH** /setting-blocks/{id} | Update patch SettingBlock
[**putUpdateSettingBlock**](SettingBlockApi.md#putupdatesettingblock) | **PUT** /setting-blocks/{id} | Update put SettingBlock


# **addSettingBlock**
> SettingBlock addSettingBlock(settingBlock)

Add SettingBlock

Add SettingBlock

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSettingBlockApi();
final SettingBlock settingBlock = ; // SettingBlock | 

try {
    final response = api.addSettingBlock(settingBlock);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SettingBlockApi->addSettingBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingBlock** | [**SettingBlock**](SettingBlock.md)|  | 

### Return type

[**SettingBlock**](SettingBlock.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByIdSettingBlock**
> JsonObject deleteByIdSettingBlock(id)

Delete by id SettingBlock

Delete by id SettingBlock

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSettingBlockApi();
final int id = 56; // int | Id

try {
    final response = api.deleteByIdSettingBlock(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SettingBlockApi->deleteByIdSettingBlock: $e\n');
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

# **deleteByIdsSettingBlock**
> JsonObject deleteByIdsSettingBlock(propertyID)

Delete by ids SettingBlock

Delete by ids SettingBlock

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSettingBlockApi();
final PropertyID propertyID = ; // PropertyID | 

try {
    final response = api.deleteByIdsSettingBlock(propertyID);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SettingBlockApi->deleteByIdsSettingBlock: $e\n');
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

# **deleteByUuidSettingBlock**
> JsonObject deleteByUuidSettingBlock(uuid)

Delete by uuid SettingBlock

Delete by uuid SettingBlock

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSettingBlockApi();
final String uuid = uuid_example; // String | Uuid

try {
    final response = api.deleteByUuidSettingBlock(uuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SettingBlockApi->deleteByUuidSettingBlock: $e\n');
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

# **deleteByUuidsSettingBlock**
> JsonObject deleteByUuidsSettingBlock(propertyUuid)

Delete by uuids SettingBlock

Delete by ids SettingBlock

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSettingBlockApi();
final PropertyUuid propertyUuid = ; // PropertyUuid | 

try {
    final response = api.deleteByUuidsSettingBlock(propertyUuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SettingBlockApi->deleteByUuidsSettingBlock: $e\n');
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

# **getAllSettingBlock**
> JsonObject getAllSettingBlock(limit, page, orderBy)

Get all SettingBlock

Get all SettingBlock

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSettingBlockApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllSettingBlock(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SettingBlockApi->getAllSettingBlock: $e\n');
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

# **getByIdSettingBlock**
> SettingBlock getByIdSettingBlock(id)

Get by id SettingBlock

Get by id SettingBlock

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSettingBlockApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdSettingBlock(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SettingBlockApi->getByIdSettingBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**SettingBlock**](SettingBlock.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateSettingBlock**
> SettingBlock patchUpdateSettingBlock(id, settingBlock)

Update patch SettingBlock

Update patch SettingBlock

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSettingBlockApi();
final int id = 56; // int | Id
final SettingBlock settingBlock = ; // SettingBlock | 

try {
    final response = api.patchUpdateSettingBlock(id, settingBlock);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SettingBlockApi->patchUpdateSettingBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **settingBlock** | [**SettingBlock**](SettingBlock.md)|  | 

### Return type

[**SettingBlock**](SettingBlock.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUpdateSettingBlock**
> SettingBlock putUpdateSettingBlock(id, settingBlock)

Update put SettingBlock

Update put SettingBlock

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSettingBlockApi();
final int id = 56; // int | Id
final SettingBlock settingBlock = ; // SettingBlock | 

try {
    final response = api.putUpdateSettingBlock(id, settingBlock);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SettingBlockApi->putUpdateSettingBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **settingBlock** | [**SettingBlock**](SettingBlock.md)|  | 

### Return type

[**SettingBlock**](SettingBlock.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

