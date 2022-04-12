# openapi.api.IndustrialAreaApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addIndustrialArea**](IndustrialAreaApi.md#addindustrialarea) | **POST** /industrial-areas | Add IndustrialArea
[**getAllIndustrialArea**](IndustrialAreaApi.md#getallindustrialarea) | **GET** /industrial-areas | Get all IndustrialArea
[**getAllIndustrialAreaByApp**](IndustrialAreaApi.md#getallindustrialareabyapp) | **GET** /app-industrial-areas | Get all IndustrialArea
[**getByIdIndustrialArea**](IndustrialAreaApi.md#getbyidindustrialarea) | **GET** /industrial-areas/{id} | Get by id IndustrialArea
[**getIndustrialAreas**](IndustrialAreaApi.md#getindustrialareas) | **GET** /get-industrial-areas | Get all IndustrialArea no paginated
[**patchUpdateIndustrialArea**](IndustrialAreaApi.md#patchupdateindustrialarea) | **PATCH** /industrial-areas/{id} | Update patch IndustrialArea


# **addIndustrialArea**
> IndustrialArea addIndustrialArea(industrialArea)

Add IndustrialArea

Add IndustrialArea

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getIndustrialAreaApi();
final IndustrialArea industrialArea = ; // IndustrialArea | 

try {
    final response = api.addIndustrialArea(industrialArea);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IndustrialAreaApi->addIndustrialArea: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **industrialArea** | [**IndustrialArea**](IndustrialArea.md)|  | 

### Return type

[**IndustrialArea**](IndustrialArea.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllIndustrialArea**
> JsonObject getAllIndustrialArea(limit, page, orderBy, nameTilde)

Get all IndustrialArea

Get all IndustrialArea

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getIndustrialAreaApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final String nameTilde = nameTilde_example; // String | name__~

try {
    final response = api.getAllIndustrialArea(limit, page, orderBy, nameTilde);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IndustrialAreaApi->getAllIndustrialArea: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **nameTilde** | **String**| name__~ | [optional] [default to 'string']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllIndustrialAreaByApp**
> JsonObject getAllIndustrialAreaByApp(limit, page, orderBy, nameTilde)

Get all IndustrialArea

Get all IndustrialArea

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getIndustrialAreaApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final String nameTilde = nameTilde_example; // String | name__~

try {
    final response = api.getAllIndustrialAreaByApp(limit, page, orderBy, nameTilde);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IndustrialAreaApi->getAllIndustrialAreaByApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **nameTilde** | **String**| name__~ | [optional] [default to 'string']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdIndustrialArea**
> IndustrialArea getByIdIndustrialArea(id)

Get by id IndustrialArea

Get by id IndustrialArea

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getIndustrialAreaApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdIndustrialArea(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IndustrialAreaApi->getByIdIndustrialArea: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**IndustrialArea**](IndustrialArea.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIndustrialAreas**
> BuiltList<IndustrialArea> getIndustrialAreas(nameTilde)

Get all IndustrialArea no paginated

Get all IndustrialArea no paginated

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getIndustrialAreaApi();
final String nameTilde = nameTilde_example; // String | name__~

try {
    final response = api.getIndustrialAreas(nameTilde);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IndustrialAreaApi->getIndustrialAreas: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nameTilde** | **String**| name__~ | [optional] [default to 'string']

### Return type

[**BuiltList&lt;IndustrialArea&gt;**](IndustrialArea.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateIndustrialArea**
> IndustrialArea patchUpdateIndustrialArea(id, industrialArea)

Update patch IndustrialArea

Update patch IndustrialArea

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getIndustrialAreaApi();
final int id = 56; // int | Id
final IndustrialArea industrialArea = ; // IndustrialArea | 

try {
    final response = api.patchUpdateIndustrialArea(id, industrialArea);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IndustrialAreaApi->patchUpdateIndustrialArea: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **industrialArea** | [**IndustrialArea**](IndustrialArea.md)|  | 

### Return type

[**IndustrialArea**](IndustrialArea.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

