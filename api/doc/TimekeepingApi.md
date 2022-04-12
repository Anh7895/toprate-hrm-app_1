# openapi.api.TimekeepingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTimekeeping**](TimekeepingApi.md#addtimekeeping) | **POST** /timekeeping | Add Timekeeping
[**getAllTimekeeping**](TimekeepingApi.md#getalltimekeeping) | **GET** /timekeeping | Get all Timekeeping
[**getByIdTimekeeping**](TimekeepingApi.md#getbyidtimekeeping) | **GET** /timekeeping/{id} | Get by id Timekeeping
[**getCalendarTimekeeping**](TimekeepingApi.md#getcalendartimekeeping) | **GET** /calendar-timekeeping | Get Calendar Timekeeping
[**getDetailTimekeeping**](TimekeepingApi.md#getdetailtimekeeping) | **GET** /timekeeping/detail | Get detail timekeeping
[**getDetailTimekeepingByUserId**](TimekeepingApi.md#getdetailtimekeepingbyuserid) | **GET** /timekeeping/{userId}/detail | Get detail timekeeping by user id
[**getTimekeepingTemplateImport**](TimekeepingApi.md#gettimekeepingtemplateimport) | **GET** /timekeeping/template | Download template import timekeeping
[**importTimekeeping**](TimekeepingApi.md#importtimekeeping) | **POST** /timekeeping/import | Import timekeeping
[**patchUpdateTimekeeping**](TimekeepingApi.md#patchupdatetimekeeping) | **PATCH** /timekeeping/{id} | Update patch Timekeeping


# **addTimekeeping**
> Timekeeping addTimekeeping(timekeeping)

Add Timekeeping

Add Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final Timekeeping timekeeping = ; // Timekeeping | 

try {
    final response = api.addTimekeeping(timekeeping);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->addTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timekeeping** | [**Timekeeping**](Timekeeping.md)|  | 

### Return type

[**Timekeeping**](Timekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTimekeeping**
> JsonObject getAllTimekeeping(limit, page, orderBy, companyId, month, userCodeTilde, fullName)

Get all Timekeeping

Get all Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String month = month_example; // String | month
final String userCodeTilde = userCodeTilde_example; // String | user_code__~
final String fullName = fullName_example; // String | full_name

try {
    final response = api.getAllTimekeeping(limit, page, orderBy, companyId, month, userCodeTilde, fullName);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->getAllTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **companyId** | **int**| company_id | [optional] 
 **month** | **String**| month | [optional] [default to '03-2022']
 **userCodeTilde** | **String**| user_code__~ | [optional] [default to 'string']
 **fullName** | **String**| full_name | [optional] [default to 'string']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdTimekeeping**
> Timekeeping getByIdTimekeeping(id)

Get by id Timekeeping

Get by id Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdTimekeeping(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->getByIdTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Timekeeping**](Timekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarTimekeeping**
> CalendarTimekeeping getCalendarTimekeeping(month)

Get Calendar Timekeeping

Get Calendar Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final String month = month_example; // String | month

try {
    final response = api.getCalendarTimekeeping(month);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->getCalendarTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **month** | **String**| month | [optional] [default to '03-2022']

### Return type

[**CalendarTimekeeping**](CalendarTimekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDetailTimekeeping**
> BuiltList<OTimekeepingDetail> getDetailTimekeeping(orderBy, companyId, month, codeTilde, fullName)

Get detail timekeeping

Get detail timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String month = month_example; // String | month
final String codeTilde = codeTilde_example; // String | code__~
final String fullName = fullName_example; // String | full_name

try {
    final response = api.getDetailTimekeeping(orderBy, companyId, month, codeTilde, fullName);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->getDetailTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **companyId** | **int**| company_id | [optional] 
 **month** | **String**| month | [optional] [default to '03-2022']
 **codeTilde** | **String**| code__~ | [optional] [default to 'string']
 **fullName** | **String**| full_name | [optional] [default to 'string']

### Return type

[**BuiltList&lt;OTimekeepingDetail&gt;**](OTimekeepingDetail.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDetailTimekeepingByUserId**
> OTimekeepingDetailUserId getDetailTimekeepingByUserId(userId, month)

Get detail timekeeping by user id

Get detail timekeeping by user id

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final int userId = 56; // int | userId
final String month = month_example; // String | month

try {
    final response = api.getDetailTimekeepingByUserId(userId, month);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->getDetailTimekeepingByUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**| userId | 
 **month** | **String**| month | [optional] [default to '03-2022']

### Return type

[**OTimekeepingDetailUserId**](OTimekeepingDetailUserId.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimekeepingTemplateImport**
> InlineResponse2002 getTimekeepingTemplateImport()

Download template import timekeeping

Download template import timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();

try {
    final response = api.getTimekeepingTemplateImport();
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->getTimekeepingTemplateImport: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importTimekeeping**
> JsonObject importTimekeeping(iTimekeepingImport)

Import timekeeping

Import timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final ITimekeepingImport iTimekeepingImport = ; // ITimekeepingImport | 

try {
    final response = api.importTimekeeping(iTimekeepingImport);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->importTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iTimekeepingImport** | [**ITimekeepingImport**](ITimekeepingImport.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateTimekeeping**
> Timekeeping patchUpdateTimekeeping(id, timekeeping)

Update patch Timekeeping

Update patch Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final int id = 56; // int | Id
final Timekeeping timekeeping = ; // Timekeeping | 

try {
    final response = api.patchUpdateTimekeeping(id, timekeeping);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->patchUpdateTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **timekeeping** | [**Timekeeping**](Timekeeping.md)|  | 

### Return type

[**Timekeeping**](Timekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

