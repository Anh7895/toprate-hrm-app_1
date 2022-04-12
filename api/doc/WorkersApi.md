# openapi.api.WorkersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addWorker**](WorkersApi.md#addworker) | **POST** /workers | Add WorkerService
[**cancelContractByWorkerId**](WorkersApi.md#cancelcontractbyworkerid) | **POST** /workers/{id}/cancel-contract | Cancel contract by worker ID
[**getAllWorker**](WorkersApi.md#getallworker) | **GET** /workers | Get all WorkerService
[**getByIdWorker**](WorkersApi.md#getbyidworker) | **GET** /workers/{id} | Get by id WorkerService
[**getWorkers**](WorkersApi.md#getworkers) | **GET** /get-workers | Get all WorkerService no paginated
[**patchUpdateWorker**](WorkersApi.md#patchupdateworker) | **PATCH** /workers/{id} | Update patch WorkerService
[**resetPasswordByIdWorker**](WorkersApi.md#resetpasswordbyidworker) | **POST** /workers/{id}/reset-password | Resend password for worker
[**salaryManagementByWorker**](WorkersApi.md#salarymanagementbyworker) | **GET** /workers/salary-management | Salary Management By Worker


# **addWorker**
> User addWorker(worker)

Add WorkerService

Add WorkerService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWorkersApi();
final Worker worker = ; // Worker | 

try {
    final response = api.addWorker(worker);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkersApi->addWorker: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **worker** | [**Worker**](Worker.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelContractByWorkerId**
> InlineResponse200 cancelContractByWorkerId(id, cancel)

Cancel contract by worker ID

Cancel contract by worker ID

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWorkersApi();
final int id = 56; // int | Id
final Cancel cancel = ; // Cancel | 

try {
    final response = api.cancelContractByWorkerId(id, cancel);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkersApi->cancelContractByWorkerId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **cancel** | [**Cancel**](Cancel.md)|  | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWorker**
> JsonObject getAllWorker(limit, page, orderBy, companyId, fullNameTilde, nationalIdTilde)

Get all WorkerService

Get all WorkerService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWorkersApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String fullNameTilde = fullNameTilde_example; // String | full_name__~
final String nationalIdTilde = nationalIdTilde_example; // String | national_id__~

try {
    final response = api.getAllWorker(limit, page, orderBy, companyId, fullNameTilde, nationalIdTilde);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkersApi->getAllWorker: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **companyId** | **int**| company_id | [optional] 
 **fullNameTilde** | **String**| full_name__~ | [optional] [default to 'string']
 **nationalIdTilde** | **String**| national_id__~ | [optional] [default to 'string']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdWorker**
> User getByIdWorker(id)

Get by id WorkerService

Get by id WorkerService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWorkersApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdWorker(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkersApi->getByIdWorker: $e\n');
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

# **getWorkers**
> BuiltList<User> getWorkers(companyId, fullNameTilde, nationalIdTilde)

Get all WorkerService no paginated

Get all WorkerService no paginated

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWorkersApi();
final int companyId = 56; // int | company_id
final String fullNameTilde = fullNameTilde_example; // String | full_name__~
final String nationalIdTilde = nationalIdTilde_example; // String | national_id__~

try {
    final response = api.getWorkers(companyId, fullNameTilde, nationalIdTilde);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkersApi->getWorkers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| company_id | [optional] 
 **fullNameTilde** | **String**| full_name__~ | [optional] [default to 'string']
 **nationalIdTilde** | **String**| national_id__~ | [optional] [default to 'string']

### Return type

[**BuiltList&lt;User&gt;**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateWorker**
> User patchUpdateWorker(id, worker)

Update patch WorkerService

Update patch WorkerService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWorkersApi();
final int id = 56; // int | Id
final Worker worker = ; // Worker | 

try {
    final response = api.patchUpdateWorker(id, worker);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkersApi->patchUpdateWorker: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **worker** | [**Worker**](Worker.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPasswordByIdWorker**
> JsonObject resetPasswordByIdWorker(id)

Resend password for worker

Resend password for worker

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWorkersApi();
final int id = 56; // int | Id

try {
    final response = api.resetPasswordByIdWorker(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkersApi->resetPasswordByIdWorker: $e\n');
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

# **salaryManagementByWorker**
> SalaryManagement salaryManagementByWorker(month)

Salary Management By Worker

Salary Management By Worker

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWorkersApi();
final String month = month_example; // String | month

try {
    final response = api.salaryManagementByWorker(month);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WorkersApi->salaryManagementByWorker: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **month** | **String**| month | [optional] [default to '03-2022']

### Return type

[**SalaryManagement**](SalaryManagement.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

