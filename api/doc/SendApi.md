# openapi.api.SendApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllViaReceiverId**](SendApi.md#getallviareceiverid) | **GET** /sends/receiver/{id} | get All Via ReceiverId


# **getAllViaReceiverId**
> BuiltList<CSend> getAllViaReceiverId(id)

get All Via ReceiverId

get All Via ReceiverId

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getSendApi();
final int id = 56; // int | Id

try {
    final response = api.getAllViaReceiverId(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SendApi->getAllViaReceiverId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**BuiltList&lt;CSend&gt;**](CSend.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

