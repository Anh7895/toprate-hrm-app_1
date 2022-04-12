# openapi.api.LetterApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addLetter**](LetterApi.md#addletter) | **POST** /letters | Add Letter
[**deleteByIdLetter**](LetterApi.md#deletebyidletter) | **DELETE** /letters/{id} | Delete by id Letter
[**deleteByIdsLetter**](LetterApi.md#deletebyidsletter) | **DELETE** /letters/delete/ids | Delete by ids Letter
[**deleteByUuidLetter**](LetterApi.md#deletebyuuidletter) | **DELETE** /letters/uuid/{uuid} | Delete by uuid Letter
[**deleteByUuidsLetter**](LetterApi.md#deletebyuuidsletter) | **DELETE** /letters/delete/uuids | Delete by uuids Letter
[**getAllLetter**](LetterApi.md#getallletter) | **GET** /letters | Get all Letter
[**getByIdLetter**](LetterApi.md#getbyidletter) | **GET** /letters/{id} | Get by id Letter
[**patchUpdateLetter**](LetterApi.md#patchupdateletter) | **PATCH** /letters/{id} | Update patch Letter
[**putUpdateLetter**](LetterApi.md#putupdateletter) | **PUT** /letters/{id} | Update put Letter


# **addLetter**
> Letter addLetter(letter)

Add Letter

Add Letter

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLetterApi();
final Letter letter = ; // Letter | 

try {
    final response = api.addLetter(letter);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LetterApi->addLetter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **letter** | [**Letter**](Letter.md)|  | 

### Return type

[**Letter**](Letter.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByIdLetter**
> JsonObject deleteByIdLetter(id)

Delete by id Letter

Delete by id Letter

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLetterApi();
final int id = 56; // int | Id

try {
    final response = api.deleteByIdLetter(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LetterApi->deleteByIdLetter: $e\n');
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

# **deleteByIdsLetter**
> JsonObject deleteByIdsLetter(propertyID)

Delete by ids Letter

Delete by ids Letter

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLetterApi();
final PropertyID propertyID = ; // PropertyID | 

try {
    final response = api.deleteByIdsLetter(propertyID);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LetterApi->deleteByIdsLetter: $e\n');
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

# **deleteByUuidLetter**
> JsonObject deleteByUuidLetter(uuid)

Delete by uuid Letter

Delete by uuid Letter

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLetterApi();
final String uuid = uuid_example; // String | Uuid

try {
    final response = api.deleteByUuidLetter(uuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LetterApi->deleteByUuidLetter: $e\n');
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

# **deleteByUuidsLetter**
> JsonObject deleteByUuidsLetter(propertyUuid)

Delete by uuids Letter

Delete by ids Letter

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLetterApi();
final PropertyUuid propertyUuid = ; // PropertyUuid | 

try {
    final response = api.deleteByUuidsLetter(propertyUuid);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LetterApi->deleteByUuidsLetter: $e\n');
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

# **getAllLetter**
> JsonObject getAllLetter(limit, page, orderBy)

Get all Letter

Get all Letter

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLetterApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllLetter(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LetterApi->getAllLetter: $e\n');
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

# **getByIdLetter**
> Letter getByIdLetter(id)

Get by id Letter

Get by id Letter

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLetterApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdLetter(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LetterApi->getByIdLetter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Letter**](Letter.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateLetter**
> Letter patchUpdateLetter(id, letter)

Update patch Letter

Update patch Letter

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLetterApi();
final int id = 56; // int | Id
final Letter letter = ; // Letter | 

try {
    final response = api.patchUpdateLetter(id, letter);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LetterApi->patchUpdateLetter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **letter** | [**Letter**](Letter.md)|  | 

### Return type

[**Letter**](Letter.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUpdateLetter**
> Letter putUpdateLetter(id, letter)

Update put Letter

Update put Letter

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLetterApi();
final int id = 56; // int | Id
final Letter letter = ; // Letter | 

try {
    final response = api.putUpdateLetter(id, letter);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LetterApi->putUpdateLetter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **letter** | [**Letter**](Letter.md)|  | 

### Return type

[**Letter**](Letter.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

