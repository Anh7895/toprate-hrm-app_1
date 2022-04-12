# openapi.api.CompanyApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCompany**](CompanyApi.md#addcompany) | **POST** /companies | Add Company
[**getAllCompanies**](CompanyApi.md#getallcompanies) | **GET** /get-companies | Get all Company no paginated
[**getAllCompany**](CompanyApi.md#getallcompany) | **GET** /companies | Get all Company
[**getByIdCompany**](CompanyApi.md#getbyidcompany) | **GET** /companies/{id} | Get by id Company
[**patchUpdateCompany**](CompanyApi.md#patchupdatecompany) | **PATCH** /companies/{id} | Update patch Company


# **addCompany**
> Company addCompany(company)

Add Company

Add Company

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCompanyApi();
final Company company = ; // Company | 

try {
    final response = api.addCompany(company);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CompanyApi->addCompany: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company** | [**Company**](Company.md)|  | 

### Return type

[**Company**](Company.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCompanies**
> BuiltList<Company> getAllCompanies(nameTilde)

Get all Company no paginated

Get all Company no paginated

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCompanyApi();
final String nameTilde = nameTilde_example; // String | name__~

try {
    final response = api.getAllCompanies(nameTilde);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CompanyApi->getAllCompanies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nameTilde** | **String**| name__~ | [optional] [default to 'string']

### Return type

[**BuiltList&lt;Company&gt;**](Company.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCompany**
> JsonObject getAllCompany(limit, page, orderBy, nameTilde)

Get all Company

Get all Company

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCompanyApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final String nameTilde = nameTilde_example; // String | name__~

try {
    final response = api.getAllCompany(limit, page, orderBy, nameTilde);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CompanyApi->getAllCompany: $e\n');
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

# **getByIdCompany**
> Company getByIdCompany(id)

Get by id Company

Get by id Company

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCompanyApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdCompany(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CompanyApi->getByIdCompany: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Company**](Company.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateCompany**
> Company patchUpdateCompany(id, company)

Update patch Company

Update patch Company

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCompanyApi();
final int id = 56; // int | Id
final Company company = ; // Company | 

try {
    final response = api.patchUpdateCompany(id, company);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CompanyApi->patchUpdateCompany: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **company** | [**Company**](Company.md)|  | 

### Return type

[**Company**](Company.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

