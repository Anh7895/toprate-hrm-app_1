# openapi.api.CoefficientPayApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCoefficientPay**](CoefficientPayApi.md#getcoefficientpay) | **GET** /coefficient-pay | Get coefficient pay


# **getCoefficientPay**
> BuiltList<OConfficientPay> getCoefficientPay()

Get coefficient pay

Get coefficient-pay

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getCoefficientPayApi();

try {
    final response = api.getCoefficientPay();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CoefficientPayApi->getCoefficientPay: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;OConfficientPay&gt;**](OConfficientPay.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

