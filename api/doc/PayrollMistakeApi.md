# openapi.api.PayrollMistakeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPayrollMistake**](PayrollMistakeApi.md#addpayrollmistake) | **POST** /payroll-mistake | Add PayrollMistake


# **addPayrollMistake**
> PayrollMistake addPayrollMistake(addPayrollMistakes)

Add PayrollMistake

Add PayrollMistake

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getPayrollMistakeApi();
final AddPayrollMistakes addPayrollMistakes = ; // AddPayrollMistakes | 

try {
    final response = api.addPayrollMistake(addPayrollMistakes);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PayrollMistakeApi->addPayrollMistake: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addPayrollMistakes** | [**AddPayrollMistakes**](AddPayrollMistakes.md)|  | 

### Return type

[**PayrollMistake**](PayrollMistake.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

