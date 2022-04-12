# openapi.api.S3Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**s3AuthToken**](S3Api.md#s3authtoken) | **GET** /s3/get-auth-token | Get S3 Auth Token


# **s3AuthToken**
> S3AuthToken s3AuthToken()

Get S3 Auth Token

Get S3 Auth Token

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getS3Api();

try {
    final response = api.s3AuthToken();
    print(response);
} catch on DioError (e) {
    print('Exception when calling S3Api->s3AuthToken: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**S3AuthToken**](S3AuthToken.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

