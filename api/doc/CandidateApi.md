# openapi.api.CandidateApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCandidate**](CandidateApi.md#addcandidate) | **POST** /candidates | Add Candidate
[**addCandidateByApp**](CandidateApi.md#addcandidatebyapp) | **POST** /app-candidates | Add Candidate
[**getAllCandidate**](CandidateApi.md#getallcandidate) | **GET** /candidates | Get all Candidate
[**getByIdCandidate**](CandidateApi.md#getbyidcandidate) | **GET** /candidates/{id} | Get by id Candidate
[**patchUpdateCandidate**](CandidateApi.md#patchupdatecandidate) | **PATCH** /candidates/{id} | Update patch Candidate


# **addCandidate**
> Candidate addCandidate(cICandidate)

Add Candidate

Add Candidate

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCandidateApi();
final CICandidate cICandidate = ; // CICandidate | 

try {
    final response = api.addCandidate(cICandidate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CandidateApi->addCandidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cICandidate** | [**CICandidate**](CICandidate.md)|  | 

### Return type

[**Candidate**](Candidate.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCandidateByApp**
> Candidate addCandidateByApp(candidate)

Add Candidate

Add Candidate

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCandidateApi();
final Candidate candidate = ; // Candidate | 

try {
    final response = api.addCandidateByApp(candidate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CandidateApi->addCandidateByApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **candidate** | [**Candidate**](Candidate.md)|  | 

### Return type

[**Candidate**](Candidate.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCandidate**
> JsonObject getAllCandidate(limit, page, orderBy, fromDateSend, toDateSend, fullNameTilde, status)

Get all Candidate

Get all Candidate

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCandidateApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final String fromDateSend = fromDateSend_example; // String | from_date_send
final String toDateSend = toDateSend_example; // String | to_date_send
final String fullNameTilde = fullNameTilde_example; // String | full_name__~
final String status = status_example; // String | status

try {
    final response = api.getAllCandidate(limit, page, orderBy, fromDateSend, toDateSend, fullNameTilde, status);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CandidateApi->getAllCandidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **fromDateSend** | **String**| from_date_send | [optional] [default to '10-03-2022']
 **toDateSend** | **String**| to_date_send | [optional] [default to '10-03-2022']
 **fullNameTilde** | **String**| full_name__~ | [optional] [default to 'string']
 **status** | **String**| status | [optional] [default to 'pending']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdCandidate**
> Candidate getByIdCandidate(id)

Get by id Candidate

Get by id Candidate

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCandidateApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdCandidate(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CandidateApi->getByIdCandidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Candidate**](Candidate.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateCandidate**
> Candidate patchUpdateCandidate(id, candidate)

Update patch Candidate

Update patch Candidate

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCandidateApi();
final int id = 56; // int | Id
final Candidate candidate = ; // Candidate | 

try {
    final response = api.patchUpdateCandidate(id, candidate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CandidateApi->patchUpdateCandidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **candidate** | [**Candidate**](Candidate.md)|  | 

### Return type

[**Candidate**](Candidate.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

