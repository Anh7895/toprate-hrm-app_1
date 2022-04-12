# openapi.api.ExcelTemplateApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportSalary**](ExcelTemplateApi.md#exportsalary) | **GET** /public/template/salaries | Export Salary Template
[**exportTimekeeping**](ExcelTemplateApi.md#exporttimekeeping) | **GET** /public/template/timekeeping | Export Timekeeping Template


# **exportSalary**
> Uint8List exportSalary()

Export Salary Template

Export Salary Template

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getExcelTemplateApi();

try {
    final response = api.exportSalary();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ExcelTemplateApi->exportSalary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportTimekeeping**
> Uint8List exportTimekeeping()

Export Timekeeping Template

Export Timekeeping Template

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getExcelTemplateApi();

try {
    final response = api.exportTimekeeping();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ExcelTemplateApi->exportTimekeeping: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

