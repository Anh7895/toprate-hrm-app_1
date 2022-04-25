# openapi.api.TimekeepingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-thrm.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkIn**](TimekeepingApi.md#checkin) | **POST** /timekeepings/check-in | Check in


# **checkIn**
> JsonObject checkIn(checkIn)

Check in

Check in

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getTimekeepingApi();
final CheckIn checkIn = ; // CheckIn | 

try {
    final response = api.checkIn(checkIn);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TimekeepingApi->checkIn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkIn** | [**CheckIn**](CheckIn.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

