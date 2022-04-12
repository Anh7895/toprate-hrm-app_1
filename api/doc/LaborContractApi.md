# openapi.api.LaborContractApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addLaborContract**](LaborContractApi.md#addlaborcontract) | **POST** /laborcontracts | Add LaborContract
[**getAllLaborContract**](LaborContractApi.md#getalllaborcontract) | **GET** /laborcontracts | Get all LaborContract
[**getByIdLaborContract**](LaborContractApi.md#getbyidlaborcontract) | **GET** /laborcontracts/{id} | Get by id LaborContract
[**patchUpdateLaborContract**](LaborContractApi.md#patchupdatelaborcontract) | **PATCH** /laborcontracts/{id} | Update patch LaborContract


# **addLaborContract**
> LaborContract addLaborContract(laborContract)

Add LaborContract

Add LaborContract

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLaborContractApi();
final LaborContract laborContract = ; // LaborContract | 

try {
    final response = api.addLaborContract(laborContract);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LaborContractApi->addLaborContract: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **laborContract** | [**LaborContract**](LaborContract.md)|  | 

### Return type

[**LaborContract**](LaborContract.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllLaborContract**
> JsonObject getAllLaborContract(limit, page, orderBy)

Get all LaborContract

Get all LaborContract

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLaborContractApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllLaborContract(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LaborContractApi->getAllLaborContract: $e\n');
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

# **getByIdLaborContract**
> LaborContract getByIdLaborContract(id)

Get by id LaborContract

Get by id LaborContract

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLaborContractApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdLaborContract(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LaborContractApi->getByIdLaborContract: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**LaborContract**](LaborContract.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateLaborContract**
> LaborContract patchUpdateLaborContract(id, laborContract)

Update patch LaborContract

Update patch LaborContract

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getLaborContractApi();
final int id = 56; // int | Id
final LaborContract laborContract = ; // LaborContract | 

try {
    final response = api.patchUpdateLaborContract(id, laborContract);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LaborContractApi->patchUpdateLaborContract: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **laborContract** | [**LaborContract**](LaborContract.md)|  | 

### Return type

[**LaborContract**](LaborContract.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

