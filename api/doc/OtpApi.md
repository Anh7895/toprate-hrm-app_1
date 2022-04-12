# openapi.api.OtpApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**forgotPasswordViaOtp**](OtpApi.md#forgotpasswordviaotp) | **GET** /otp/forgot-password | Forgot Password Via Otp
[**generateOtp**](OtpApi.md#generateotp) | **GET** /otp | Get code Otp


# **forgotPasswordViaOtp**
> COtp forgotPasswordViaOtp(username)

Forgot Password Via Otp

Forgot Password Via Otp

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOtpApi();
final String username = username_example; // String | username

try {
    final response = api.forgotPasswordViaOtp(username);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OtpApi->forgotPasswordViaOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username | [default to 'admin']

### Return type

[**COtp**](COtp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateOtp**
> COtp generateOtp(phone)

Get code Otp

Get code Otp

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getOtpApi();
final String phone = phone_example; // String | phone

try {
    final response = api.generateOtp(phone);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OtpApi->generateOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone** | **String**| phone | [default to '']

### Return type

[**COtp**](COtp.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

