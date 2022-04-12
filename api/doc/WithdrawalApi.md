# openapi.api.WithdrawalApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addWithdrawal**](WithdrawalApi.md#addwithdrawal) | **POST** /withdrawals | Add Withdrawal
[**exportWithdrawal**](WithdrawalApi.md#exportwithdrawal) | **GET** /withdrawals/export | Export Withdrawal
[**getAllWithdrawal**](WithdrawalApi.md#getallwithdrawal) | **GET** /withdrawals | Get all Withdrawal
[**getByIdWithdrawal**](WithdrawalApi.md#getbyidwithdrawal) | **GET** /withdrawals/{id} | Get by id Withdrawal
[**getListRequestWithdrawal**](WithdrawalApi.md#getlistrequestwithdrawal) | **GET** /withdrawals/list-request | Get list request Withdrawal
[**handleWithdrawal**](WithdrawalApi.md#handlewithdrawal) | **POST** /withdrawals/handle | Handle withdrawals
[**patchUpdateWithdrawal**](WithdrawalApi.md#patchupdatewithdrawal) | **PATCH** /withdrawals/{id} | Update patch Withdrawal


# **addWithdrawal**
> Withdrawal addWithdrawal(addWithdrawal)

Add Withdrawal

Add Withdrawal

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWithdrawalApi();
final AddWithdrawal addWithdrawal = ; // AddWithdrawal | 

try {
    final response = api.addWithdrawal(addWithdrawal);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WithdrawalApi->addWithdrawal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addWithdrawal** | [**AddWithdrawal**](AddWithdrawal.md)|  | 

### Return type

[**Withdrawal**](Withdrawal.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportWithdrawal**
> JsonObject exportWithdrawal(orderBy, companyId, fromDateSend, toDateSend, bankAccount)

Export Withdrawal

Export Withdrawal

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWithdrawalApi();
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String fromDateSend = fromDateSend_example; // String | from_date_send
final String toDateSend = toDateSend_example; // String | to_date_send
final String bankAccount = bankAccount_example; // String | bank_account

try {
    final response = api.exportWithdrawal(orderBy, companyId, fromDateSend, toDateSend, bankAccount);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WithdrawalApi->exportWithdrawal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **companyId** | **int**| company_id | [optional] 
 **fromDateSend** | **String**| from_date_send | [optional] [default to '10-03-2022']
 **toDateSend** | **String**| to_date_send | [optional] [default to '10-03-2022']
 **bankAccount** | **String**| bank_account | [optional] [default to 'string']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWithdrawal**
> JsonObject getAllWithdrawal(limit, page, orderBy, companyId, fromDateSend, toDateSend, bankAccount)

Get all Withdrawal

Get all Withdrawal

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWithdrawalApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String fromDateSend = fromDateSend_example; // String | from_date_send
final String toDateSend = toDateSend_example; // String | to_date_send
final String bankAccount = bankAccount_example; // String | bank_account

try {
    final response = api.getAllWithdrawal(limit, page, orderBy, companyId, fromDateSend, toDateSend, bankAccount);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WithdrawalApi->getAllWithdrawal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **companyId** | **int**| company_id | [optional] 
 **fromDateSend** | **String**| from_date_send | [optional] [default to '10-03-2022']
 **toDateSend** | **String**| to_date_send | [optional] [default to '10-03-2022']
 **bankAccount** | **String**| bank_account | [optional] [default to 'string']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdWithdrawal**
> Withdrawal getByIdWithdrawal(id)

Get by id Withdrawal

Get by id Withdrawal

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWithdrawalApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdWithdrawal(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WithdrawalApi->getByIdWithdrawal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Withdrawal**](Withdrawal.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListRequestWithdrawal**
> JsonObject getListRequestWithdrawal(limit, page, orderBy, companyId, fromDateSend, toDateSend)

Get list request Withdrawal

Get list rquest Withdrawal

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWithdrawalApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String fromDateSend = fromDateSend_example; // String | from_date_send
final String toDateSend = toDateSend_example; // String | to_date_send

try {
    final response = api.getListRequestWithdrawal(limit, page, orderBy, companyId, fromDateSend, toDateSend);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WithdrawalApi->getListRequestWithdrawal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **companyId** | **int**| company_id | [optional] 
 **fromDateSend** | **String**| from_date_send | [optional] [default to '10-03-2022']
 **toDateSend** | **String**| to_date_send | [optional] [default to '10-03-2022']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleWithdrawal**
> InlineResponse200 handleWithdrawal(handleWithdrawal)

Handle withdrawals

Handle withdrawals

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWithdrawalApi();
final HandleWithdrawal handleWithdrawal = ; // HandleWithdrawal | 

try {
    final response = api.handleWithdrawal(handleWithdrawal);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WithdrawalApi->handleWithdrawal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handleWithdrawal** | [**HandleWithdrawal**](HandleWithdrawal.md)|  | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateWithdrawal**
> Withdrawal patchUpdateWithdrawal(id, withdrawal)

Update patch Withdrawal

Update patch Withdrawal

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getWithdrawalApi();
final int id = 56; // int | Id
final Withdrawal withdrawal = ; // Withdrawal | 

try {
    final response = api.patchUpdateWithdrawal(id, withdrawal);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WithdrawalApi->patchUpdateWithdrawal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **withdrawal** | [**Withdrawal**](Withdrawal.md)|  | 

### Return type

[**Withdrawal**](Withdrawal.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

