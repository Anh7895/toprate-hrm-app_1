# openapi.api.SalaryApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSalary**](SalaryApi.md#addsalary) | **POST** /salaries | Add Salary
[**downloadTemplateImportSalary**](SalaryApi.md#downloadtemplateimportsalary) | **GET** /salaries/template | Download template import Salary
[**exportSalary**](SalaryApi.md#exportsalary) | **GET** /salaries/export | Export Salary
[**getAllSalary**](SalaryApi.md#getallsalary) | **GET** /salaries | Get all Salary
[**getByIdSalary**](SalaryApi.md#getbyidsalary) | **GET** /salaries/{id} | Get by id Salary
[**importSalary**](SalaryApi.md#importsalary) | **POST** /salaries/import | Import Salary
[**patchUpdateSalary**](SalaryApi.md#patchupdatesalary) | **PATCH** /salaries/{id} | Update patch Salary


# **addSalary**
> Salary addSalary(salary)

Add Salary

Add Salary

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSalaryApi();
final Salary salary = ; // Salary | 

try {
    final response = api.addSalary(salary);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SalaryApi->addSalary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **salary** | [**Salary**](Salary.md)|  | 

### Return type

[**Salary**](Salary.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadTemplateImportSalary**
> InlineResponse2001 downloadTemplateImportSalary()

Download template import Salary

Download template import Salary

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSalaryApi();

try {
    final response = api.downloadTemplateImportSalary();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SalaryApi->downloadTemplateImportSalary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportSalary**
> JsonObject exportSalary(orderBy, fullNameTilde, companyId, date, userCodeTilde)

Export Salary

Export Salary

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSalaryApi();
final String orderBy = orderBy_example; // String | Order by
final String fullNameTilde = fullNameTilde_example; // String | full_name__~
final int companyId = 56; // int | company_id
final String date = date_example; // String | date
final String userCodeTilde = userCodeTilde_example; // String | user_code__~

try {
    final response = api.exportSalary(orderBy, fullNameTilde, companyId, date, userCodeTilde);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SalaryApi->exportSalary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **fullNameTilde** | **String**| full_name__~ | [optional] [default to 'string']
 **companyId** | **int**| company_id | [optional] 
 **date** | **String**| date | [optional] [default to '10-2022']
 **userCodeTilde** | **String**| user_code__~ | [optional] [default to 'string']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSalary**
> JsonObject getAllSalary(limit, page, orderBy, fullNameTilde, companyId, date, userCodeTilde)

Get all Salary

Get all Salary

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSalaryApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final String fullNameTilde = fullNameTilde_example; // String | full_name__~
final int companyId = 56; // int | company_id
final String date = date_example; // String | date
final String userCodeTilde = userCodeTilde_example; // String | user_code__~

try {
    final response = api.getAllSalary(limit, page, orderBy, fullNameTilde, companyId, date, userCodeTilde);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SalaryApi->getAllSalary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **fullNameTilde** | **String**| full_name__~ | [optional] [default to 'string']
 **companyId** | **int**| company_id | [optional] 
 **date** | **String**| date | [optional] [default to '10-2022']
 **userCodeTilde** | **String**| user_code__~ | [optional] [default to 'string']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdSalary**
> Salary getByIdSalary(id)

Get by id Salary

Get by id Salary

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSalaryApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdSalary(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SalaryApi->getByIdSalary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Salary**](Salary.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importSalary**
> JsonObject importSalary(inlineObject)

Import Salary

Import Salary

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSalaryApi();
final InlineObject inlineObject = ; // InlineObject | 

try {
    final response = api.importSalary(inlineObject);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SalaryApi->importSalary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateSalary**
> Salary patchUpdateSalary(id, salary)

Update patch Salary

Update patch Salary

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSalaryApi();
final int id = 56; // int | Id
final Salary salary = ; // Salary | 

try {
    final response = api.patchUpdateSalary(id, salary);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SalaryApi->patchUpdateSalary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **salary** | [**Salary**](Salary.md)|  | 

### Return type

[**Salary**](Salary.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

