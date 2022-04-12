# openapi.api.QuitJobApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addQuitJob**](QuitJobApi.md#addquitjob) | **POST** /quit-job | Add quit-job
[**approvedQuitJob**](QuitJobApi.md#approvedquitjob) | **POST** /quit-job/approved | Approve quit-job
[**getAllQuitJob**](QuitJobApi.md#getallquitjob) | **GET** /quit-job | Get all quit-job
[**getByIdQuitJob**](QuitJobApi.md#getbyidquitjob) | **GET** /quit-job/{id} | Get by id quit-job
[**patchUpdateQuitJob**](QuitJobApi.md#patchupdatequitjob) | **PATCH** /quit-job/{id} | Update patch quit-job


# **addQuitJob**
> Letter addQuitJob(quitJob)

Add quit-job

Add quit-job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getQuitJobApi();
final QuitJob quitJob = ; // QuitJob | 

try {
    final response = api.addQuitJob(quitJob);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuitJobApi->addQuitJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quitJob** | [**QuitJob**](QuitJob.md)|  | 

### Return type

[**Letter**](Letter.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **approvedQuitJob**
> InlineResponse200 approvedQuitJob(approved)

Approve quit-job

Approve quit-job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getQuitJobApi();
final Approved approved = ; // Approved | 

try {
    final response = api.approvedQuitJob(approved);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuitJobApi->approvedQuitJob: $e\n');
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

# **getAllQuitJob**
> JsonObject getAllQuitJob(limit, page, orderBy, companyId, fromDateGe, toDateLe, status)

Get all quit-job

Get all quit-job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getQuitJobApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String fromDateGe = fromDateGe_example; // String | from_date__ge
final String toDateLe = toDateLe_example; // String | to_date__le
final String status = status_example; // String | status

try {
    final response = api.getAllQuitJob(limit, page, orderBy, companyId, fromDateGe, toDateLe, status);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuitJobApi->getAllQuitJob: $e\n');
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

# **getByIdQuitJob**
> Letter getByIdQuitJob(id)

Get by id quit-job

Get by id quit-job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getQuitJobApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdQuitJob(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuitJobApi->getByIdQuitJob: $e\n');
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

# **patchUpdateQuitJob**
> Letter patchUpdateQuitJob(id, letter)

Update patch quit-job

Update patch quit-job

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getQuitJobApi();
final int id = 56; // int | Id
final Letter letter = ; // Letter | 

try {
    final response = api.patchUpdateQuitJob(id, letter);
    print(response);
} catch on DioError (e) {
    print('Exception when calling QuitJobApi->patchUpdateQuitJob: $e\n');
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

