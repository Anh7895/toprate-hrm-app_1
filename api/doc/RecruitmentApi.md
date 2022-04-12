# openapi.api.RecruitmentApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRecruitment**](RecruitmentApi.md#addrecruitment) | **POST** /recruitments | Add Recruitment
[**getAllRecruitment**](RecruitmentApi.md#getallrecruitment) | **GET** /recruitments | Get all Recruitment
[**getByIdRecruitment**](RecruitmentApi.md#getbyidrecruitment) | **GET** /recruitments/{id} | Get by id Recruitment
[**getByIdRecruitmentApp**](RecruitmentApi.md#getbyidrecruitmentapp) | **GET** /app-recruitments/{id} | Get by id Recruitment
[**getRecruitmentByApp**](RecruitmentApi.md#getrecruitmentbyapp) | **GET** /app-recruitments | Get all Recruitment
[**patchUpdateRecruitment**](RecruitmentApi.md#patchupdaterecruitment) | **PATCH** /recruitments/{id} | Update patch Recruitment


# **addRecruitment**
> Recruitment addRecruitment(cIRecruitment)

Add Recruitment

Add Recruitment

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getRecruitmentApi();
final CIRecruitment cIRecruitment = ; // CIRecruitment | 

try {
    final response = api.addRecruitment(cIRecruitment);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RecruitmentApi->addRecruitment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cIRecruitment** | [**CIRecruitment**](CIRecruitment.md)|  | 

### Return type

[**Recruitment**](Recruitment.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllRecruitment**
> JsonObject getAllRecruitment(limit, page, orderBy, companyId, fromDate, toDate)

Get all Recruitment

Get all Recruitment

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getRecruitmentApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String fromDate = fromDate_example; // String | from_date
final String toDate = toDate_example; // String | to_date

try {
    final response = api.getAllRecruitment(limit, page, orderBy, companyId, fromDate, toDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RecruitmentApi->getAllRecruitment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **companyId** | **int**| company_id | [optional] 
 **fromDate** | **String**| from_date | [optional] 
 **toDate** | **String**| to_date | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdRecruitment**
> Recruitment getByIdRecruitment(id)

Get by id Recruitment

Get by id Recruitment

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getRecruitmentApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdRecruitment(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RecruitmentApi->getByIdRecruitment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Recruitment**](Recruitment.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdRecruitmentApp**
> Recruitment getByIdRecruitmentApp(id)

Get by id Recruitment

Get by id Recruitment

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getRecruitmentApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdRecruitmentApp(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RecruitmentApi->getByIdRecruitmentApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Recruitment**](Recruitment.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecruitmentByApp**
> JsonObject getRecruitmentByApp(industrialAreaId, limit, page, orderBy)

Get all Recruitment

Get all Recruitment

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getRecruitmentApi();
final int industrialAreaId = 56; // int | industrial_area_id
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getRecruitmentByApp(industrialAreaId, limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RecruitmentApi->getRecruitmentByApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **industrialAreaId** | **int**| industrial_area_id | 
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateRecruitment**
> Recruitment patchUpdateRecruitment(id, cIRecruitment)

Update patch Recruitment

Update patch Recruitment

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getRecruitmentApi();
final int id = 56; // int | Id
final CIRecruitment cIRecruitment = ; // CIRecruitment | 

try {
    final response = api.patchUpdateRecruitment(id, cIRecruitment);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RecruitmentApi->patchUpdateRecruitment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **cIRecruitment** | [**CIRecruitment**](CIRecruitment.md)|  | 

### Return type

[**Recruitment**](Recruitment.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

