# openapi.api.PayrollMistakesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllPayrollMistakes**](PayrollMistakesApi.md#getallpayrollmistakes) | **GET** /payroll-mistake | Get all Payroll Mistakes
[**putUpdateStatusPayrollMistakes**](PayrollMistakesApi.md#putupdatestatuspayrollmistakes) | **PATCH** /payroll-mistake/{id} | Update put payroll mistakes


# **getAllPayrollMistakes**
> JsonObject getAllPayrollMistakes(limit, page, orderBy, fullNamePayrollMistake, companyId, userCodeTilde, month, status)

Get all Payroll Mistakes

Get all Payroll Mistakes

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPayrollMistakesApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final String fullNamePayrollMistake = fullNamePayrollMistake_example; // String | full_name_payroll_mistake
final int companyId = 56; // int | company_id
final String userCodeTilde = userCodeTilde_example; // String | user_code__~
final String month = month_example; // String | month
final String status = status_example; // String | status

try {
    final response = api.getAllPayrollMistakes(limit, page, orderBy, fullNamePayrollMistake, companyId, userCodeTilde, month, status);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PayrollMistakesApi->getAllPayrollMistakes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **fullNamePayrollMistake** | **String**| full_name_payroll_mistake | [optional] [default to 'string']
 **companyId** | **int**| company_id | [optional] 
 **userCodeTilde** | **String**| user_code__~ | [optional] [default to 'string']
 **month** | **String**| month | [optional] [default to '03-2022']
 **status** | **String**| status | [optional] [default to 'pending']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUpdateStatusPayrollMistakes**
> PayrollMistake putUpdateStatusPayrollMistakes(id, payrollMistake)

Update put payroll mistakes

Update put payroll mistakes

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPayrollMistakesApi();
final int id = 56; // int | Id
final PayrollMistake payrollMistake = ; // PayrollMistake | 

try {
    final response = api.putUpdateStatusPayrollMistakes(id, payrollMistake);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PayrollMistakesApi->putUpdateStatusPayrollMistakes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **payrollMistake** | [**PayrollMistake**](PayrollMistake.md)|  | 

### Return type

[**PayrollMistake**](PayrollMistake.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

