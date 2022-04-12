# openapi.api.StaffsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addStaff**](StaffsApi.md#addstaff) | **POST** /staffs | Add StaffService
[**getAllStaff**](StaffsApi.md#getallstaff) | **GET** /staffs | Get all StaffService
[**getByIdstaff**](StaffsApi.md#getbyidstaff) | **GET** /staffs/{id} | Get by id StaffService
[**lockById**](StaffsApi.md#lockbyid) | **POST** /staffs/{id}/lock | Lock by id StaffService
[**patchUpdateStaff**](StaffsApi.md#patchupdatestaff) | **PATCH** /staffs/{id} | Update patch StaffService
[**resetPasswordById**](StaffsApi.md#resetpasswordbyid) | **POST** /staffs/{id}/reset-password | Resend password for user StaffService


# **addStaff**
> User addStaff(staff)

Add StaffService

Add StaffService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getStaffsApi();
final Staff staff = ; // Staff | 

try {
    final response = api.addStaff(staff);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaffsApi->addStaff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **staff** | [**Staff**](Staff.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllStaff**
> JsonObject getAllStaff(limit, page, orderBy, roleId, fullNameTilde, companyId)

Get all StaffService

Get all StaffService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getStaffsApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final int roleId = 56; // int | role_id
final String fullNameTilde = fullNameTilde_example; // String | full_name__~
final int companyId = 56; // int | company_id

try {
    final response = api.getAllStaff(limit, page, orderBy, roleId, fullNameTilde, companyId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaffsApi->getAllStaff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **roleId** | **int**| role_id | [optional] 
 **fullNameTilde** | **String**| full_name__~ | [optional] [default to 'string']
 **companyId** | **int**| company_id | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdstaff**
> User getByIdstaff(id)

Get by id StaffService

Get by id StaffService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getStaffsApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdstaff(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaffsApi->getByIdstaff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockById**
> JsonObject lockById(id)

Lock by id StaffService

Lock by ids StaffService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getStaffsApi();
final int id = 56; // int | Id

try {
    final response = api.lockById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaffsApi->lockById: $e\n');
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

# **patchUpdateStaff**
> User patchUpdateStaff(id, staff)

Update patch StaffService

Update patch StaffService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getStaffsApi();
final int id = 56; // int | Id
final Staff staff = ; // Staff | 

try {
    final response = api.patchUpdateStaff(id, staff);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaffsApi->patchUpdateStaff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **staff** | [**Staff**](Staff.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPasswordById**
> JsonObject resetPasswordById(id)

Resend password for user StaffService

Resend password for user StaffService

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getStaffsApi();
final int id = 56; // int | Id

try {
    final response = api.resetPasswordById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaffsApi->resetPasswordById: $e\n');
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

