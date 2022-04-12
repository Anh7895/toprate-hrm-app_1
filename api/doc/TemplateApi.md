# openapi.api.TemplateApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTemplate**](TemplateApi.md#addtemplate) | **POST** /templates | Add Template
[**deleteByIdTemplate**](TemplateApi.md#deletebyidtemplate) | **DELETE** /templates/{id} | Delete by id Template
[**deleteByIdsTemplate**](TemplateApi.md#deletebyidstemplate) | **DELETE** /templates/delete/ids | Delete by ids Template
[**getAllTemplate**](TemplateApi.md#getalltemplate) | **GET** /templates | Get all Template
[**getByIdTemplate**](TemplateApi.md#getbyidtemplate) | **GET** /templates/{id} | Get by id Template
[**patchUpdateTemplate**](TemplateApi.md#patchupdatetemplate) | **PATCH** /templates/{id} | Update patch Template
[**putUpdateTemplate**](TemplateApi.md#putupdatetemplate) | **PUT** /templates/{id} | Update put Template


# **addTemplate**
> Template addTemplate(template)

Add Template

Add Template

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTemplateApi();
final Template template = ; // Template | 

try {
    final response = api.addTemplate(template);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TemplateApi->addTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**Template**](Template.md)|  | 

### Return type

[**Template**](Template.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByIdTemplate**
> JsonObject deleteByIdTemplate(id)

Delete by id Template

Delete by id Template

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTemplateApi();
final int id = 56; // int | Id

try {
    final response = api.deleteByIdTemplate(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TemplateApi->deleteByIdTemplate: $e\n');
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

# **deleteByIdsTemplate**
> JsonObject deleteByIdsTemplate(propertyID)

Delete by ids Template

Delete by ids Template

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTemplateApi();
final PropertyID propertyID = ; // PropertyID | 

try {
    final response = api.deleteByIdsTemplate(propertyID);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TemplateApi->deleteByIdsTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyID** | [**PropertyID**](PropertyID.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTemplate**
> JsonObject getAllTemplate(limit, page, orderBy)

Get all Template

Get all Template

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTemplateApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllTemplate(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TemplateApi->getAllTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **getByIdTemplate**
> Template getByIdTemplate(id)

Get by id Template

Get by id Template

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTemplateApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdTemplate(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TemplateApi->getByIdTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Template**](Template.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateTemplate**
> Template patchUpdateTemplate(id, template)

Update patch Template

Update patch Template

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTemplateApi();
final int id = 56; // int | Id
final Template template = ; // Template | 

try {
    final response = api.patchUpdateTemplate(id, template);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TemplateApi->patchUpdateTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **template** | [**Template**](Template.md)|  | 

### Return type

[**Template**](Template.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUpdateTemplate**
> Template putUpdateTemplate(id, template)

Update put Template

Update put Template

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTemplateApi();
final int id = 56; // int | Id
final Template template = ; // Template | 

try {
    final response = api.putUpdateTemplate(id, template);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TemplateApi->putUpdateTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **template** | [**Template**](Template.md)|  | 

### Return type

[**Template**](Template.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

