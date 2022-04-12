# openapi.api.WrongTimekeepingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addWrongTimekeeping**](WrongTimekeepingApi.md#addwrongtimekeeping) | **POST** /wrong-timekeeping | Add Wrong Timekeeping
[**getAllWrongTimekeeping**](WrongTimekeepingApi.md#getallwrongtimekeeping) | **GET** /wrong-timekeeping | Get all Wrong Timekeeping
[**getByIdWrongTimekeeping**](WrongTimekeepingApi.md#getbyidwrongtimekeeping) | **GET** /wrong-timekeeping/{id} | Get by id WrongTimekeeping
[**patchUpdateWrongTimekeeping**](WrongTimekeepingApi.md#patchupdatewrongtimekeeping) | **PATCH** /wrong-timekeeping/{id} | Update patch WrongTimekeeping
[**updateStauts**](WrongTimekeepingApi.md#updatestauts) | **POST** /wrong-timekeeping/update-status | Update status wrong timekeeping


# **addWrongTimekeeping**
> WrongTimekeeping addWrongTimekeeping(addWrongTimekeeping)

Add Wrong Timekeeping

Add Wrong Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWrongTimekeepingApi();
final AddWrongTimekeeping addWrongTimekeeping = ; // AddWrongTimekeeping | 

try {
    final response = api.addWrongTimekeeping(addWrongTimekeeping);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WrongTimekeepingApi->addWrongTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addWrongTimekeeping** | [**AddWrongTimekeeping**](AddWrongTimekeeping.md)|  | 

### Return type

[**WrongTimekeeping**](WrongTimekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWrongTimekeeping**
> JsonObject getAllWrongTimekeeping(limit, page, orderBy, companyId, fullNameTilde, status, userCodeTilde, month)

Get all Wrong Timekeeping

Get all Wrong Timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWrongTimekeepingApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String fullNameTilde = fullNameTilde_example; // String | full_name__~
final String status = status_example; // String | status
final String userCodeTilde = userCodeTilde_example; // String | user_code__~
final String month = month_example; // String | month

try {
    final response = api.getAllWrongTimekeeping(limit, page, orderBy, companyId, fullNameTilde, status, userCodeTilde, month);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WrongTimekeepingApi->getAllWrongTimekeeping: $e\n');
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
 **status** | **String**| status | [optional] [default to 'pending']
 **userCodeTilde** | **String**| user_code__~ | [optional] [default to 'string']
 **month** | **String**| month | [optional] [default to '03-2022']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdWrongTimekeeping**
> WrongTimekeeping getByIdWrongTimekeeping(id)

Get by id WrongTimekeeping

Get by id WrongTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWrongTimekeepingApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdWrongTimekeeping(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WrongTimekeepingApi->getByIdWrongTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**WrongTimekeeping**](WrongTimekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateWrongTimekeeping**
> WrongTimekeeping patchUpdateWrongTimekeeping(id, addWrongTimekeeping)

Update patch WrongTimekeeping

Update patch WrongTimekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWrongTimekeepingApi();
final int id = 56; // int | Id
final AddWrongTimekeeping addWrongTimekeeping = ; // AddWrongTimekeeping | 

try {
    final response = api.patchUpdateWrongTimekeeping(id, addWrongTimekeeping);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WrongTimekeepingApi->patchUpdateWrongTimekeeping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **addWrongTimekeeping** | [**AddWrongTimekeeping**](AddWrongTimekeeping.md)|  | 

### Return type

[**WrongTimekeeping**](WrongTimekeeping.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStauts**
> InlineResponse200 updateStauts(updateStatus)

Update status wrong timekeeping

Update status wrong timekeeping

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWrongTimekeepingApi();
final UpdateStatus updateStatus = ; // UpdateStatus | 

try {
    final response = api.updateStauts(updateStatus);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WrongTimekeepingApi->updateStauts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateStatus** | [**UpdateStatus**](UpdateStatus.md)|  | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

