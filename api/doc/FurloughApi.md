# openapi.api.FurloughApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFurlough**](FurloughApi.md#addfurlough) | **POST** /furlough | Add Furlough
[**approvedFurlough**](FurloughApi.md#approvedfurlough) | **POST** /furlough/approved | Approve Furlough
[**getAllFurlough**](FurloughApi.md#getallfurlough) | **GET** /furlough | Get all Furlough
[**getByIdFurlough**](FurloughApi.md#getbyidfurlough) | **GET** /furlough/{id} | Get by id Furlough
[**patchUpdateFurlough**](FurloughApi.md#patchupdatefurlough) | **PATCH** /furlough/{id} | Update patch Furlough


# **addFurlough**
> Letter addFurlough(letter)

Add Furlough

Add Furlough

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getFurloughApi();
final Letter letter = ; // Letter | 

try {
    final response = api.addFurlough(letter);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FurloughApi->addFurlough: $e\n');
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

# **approvedFurlough**
> InlineResponse200 approvedFurlough(approved)

Approve Furlough

Approve Furlough

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getFurloughApi();
final Approved approved = ; // Approved | 

try {
    final response = api.approvedFurlough(approved);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FurloughApi->approvedFurlough: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approved** | [**Approved**](Approved.md)|  | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllFurlough**
> JsonObject getAllFurlough(limit, page, orderBy, companyId, fromDateGe, toDateLe, status)

Get all Furlough

Get all Furlough

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getFurloughApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String fromDateGe = fromDateGe_example; // String | from_date__ge
final String toDateLe = toDateLe_example; // String | to_date__le
final String status = status_example; // String | status

try {
    final response = api.getAllFurlough(limit, page, orderBy, companyId, fromDateGe, toDateLe, status);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FurloughApi->getAllFurlough: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **companyId** | **int**| company_id | [optional] 
 **fromDateGe** | **String**| from_date__ge | [optional] [default to '2022-02-20']
 **toDateLe** | **String**| to_date__le | [optional] [default to '2022-02-20']
 **status** | **String**| status | [optional] [default to 'pending']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdFurlough**
> Letter getByIdFurlough(id)

Get by id Furlough

Get by id Furlough

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getFurloughApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdFurlough(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FurloughApi->getByIdFurlough: $e\n');
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

# **patchUpdateFurlough**
> Letter patchUpdateFurlough(id, letter)

Update patch Furlough

Update patch Furlough

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getFurloughApi();
final int id = 56; // int | Id
final Letter letter = ; // Letter | 

try {
    final response = api.patchUpdateFurlough(id, letter);
    print(response);
} catch on DioError (e) {
    print('Exception when calling FurloughApi->patchUpdateFurlough: $e\n');
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

