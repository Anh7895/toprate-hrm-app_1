# openapi.api.ReportApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reportRecruitments**](ReportApi.md#reportrecruitments) | **GET** /reports/recruitment | reportRecruitments


# **reportRecruitments**
> COReportRecruitment reportRecruitments(period, areaId, number)

reportRecruitments

reportRecruitments

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getReportApi();
final String period = period_example; // String | period
final int areaId = 56; // int | area_id
final String number = number_example; // String | number

try {
    final response = api.reportRecruitments(period, areaId, number);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ReportApi->reportRecruitments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**| period | [optional] [default to 'string']
 **areaId** | **int**| area_id | [optional] 
 **number** | **String**| number | [optional] [default to 'm-Y']

### Return type

[**COReportRecruitment**](COReportRecruitment.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

