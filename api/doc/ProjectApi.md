# openapi.api.ProjectApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-thrm.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProject**](ProjectApi.md#addproject) | **POST** /projects | Add Project
[**getAllProject**](ProjectApi.md#getallproject) | **GET** /projects | Get all Project
[**getByIdProject**](ProjectApi.md#getbyidproject) | **GET** /projects/{id} | Get by id Project
[**patchUpdateProject**](ProjectApi.md#patchupdateproject) | **PATCH** /projects/{id} | Update patch Project


# **addProject**
> Project addProject(project)

Add Project

Add Project

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getProjectApi();
final Project project = ; // Project | 

try {
    final response = api.addProject(project);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectApi->addProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | [**Project**](Project.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllProject**
> JsonObject getAllProject(limit, page, orderBy)

Get all Project

Get all Project

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getProjectApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllProject(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectApi->getAllProject: $e\n');
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

# **getByIdProject**
> Project getByIdProject(id)

Get by id Project

Get by id Project

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getProjectApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdProject(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectApi->getByIdProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Project**](Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateProject**
> Project patchUpdateProject(id, project)

Update patch Project

Update patch Project

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getProjectApi();
final int id = 56; // int | Id
final Project project = ; // Project | 

try {
    final response = api.patchUpdateProject(id, project);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectApi->patchUpdateProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **project** | [**Project**](Project.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

