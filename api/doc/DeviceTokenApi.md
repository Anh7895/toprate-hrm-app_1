# openapi.api.DeviceTokenApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDeviceToken**](DeviceTokenApi.md#adddevicetoken) | **POST** /device-tokens | Add DeviceToken
[**deleteByIdDeviceToken**](DeviceTokenApi.md#deletebyiddevicetoken) | **DELETE** /device-tokens/{id} | Delete by id DeviceToken
[**deleteByIdsDeviceToken**](DeviceTokenApi.md#deletebyidsdevicetoken) | **DELETE** /device-tokens/delete/ids | Delete by ids DeviceToken
[**getAllDeviceToken**](DeviceTokenApi.md#getalldevicetoken) | **GET** /device-tokens | Get all DeviceToken
[**getByIdDeviceToken**](DeviceTokenApi.md#getbyiddevicetoken) | **GET** /device-tokens/{id} | Get by id DeviceToken
[**patchUpdateDeviceToken**](DeviceTokenApi.md#patchupdatedevicetoken) | **PATCH** /device-tokens/{id} | Update patch DeviceToken
[**putUpdateDeviceToken**](DeviceTokenApi.md#putupdatedevicetoken) | **PUT** /device-tokens/{id} | Update put DeviceToken


# **addDeviceToken**
> DeviceToken addDeviceToken(deviceToken)

Add DeviceToken

Add DeviceToken

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getDeviceTokenApi();
final DeviceToken deviceToken = ; // DeviceToken | 

try {
    final response = api.addDeviceToken(deviceToken);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DeviceTokenApi->addDeviceToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceToken** | [**DeviceToken**](DeviceToken.md)|  | 

### Return type

[**DeviceToken**](DeviceToken.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByIdDeviceToken**
> JsonObject deleteByIdDeviceToken(id)

Delete by id DeviceToken

Delete by id DeviceToken

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getDeviceTokenApi();
final int id = 56; // int | Id

try {
    final response = api.deleteByIdDeviceToken(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DeviceTokenApi->deleteByIdDeviceToken: $e\n');
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

# **deleteByIdsDeviceToken**
> JsonObject deleteByIdsDeviceToken(propertyID)

Delete by ids DeviceToken

Delete by ids DeviceToken

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getDeviceTokenApi();
final PropertyID propertyID = ; // PropertyID | 

try {
    final response = api.deleteByIdsDeviceToken(propertyID);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DeviceTokenApi->deleteByIdsDeviceToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyID** | [**PropertyID**](PropertyID.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllDeviceToken**
> JsonObject getAllDeviceToken(limit, page, orderBy)

Get all DeviceToken

Get all DeviceToken

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getDeviceTokenApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by

try {
    final response = api.getAllDeviceToken(limit, page, orderBy);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DeviceTokenApi->getAllDeviceToken: $e\n');
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

# **getByIdDeviceToken**
> DeviceToken getByIdDeviceToken(id)

Get by id DeviceToken

Get by id DeviceToken

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getDeviceTokenApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdDeviceToken(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DeviceTokenApi->getByIdDeviceToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**DeviceToken**](DeviceToken.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUpdateDeviceToken**
> DeviceToken patchUpdateDeviceToken(id, deviceToken)

Update patch DeviceToken

Update patch DeviceToken

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getDeviceTokenApi();
final int id = 56; // int | Id
final DeviceToken deviceToken = ; // DeviceToken | 

try {
    final response = api.patchUpdateDeviceToken(id, deviceToken);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DeviceTokenApi->patchUpdateDeviceToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **deviceToken** | [**DeviceToken**](DeviceToken.md)|  | 

### Return type

[**DeviceToken**](DeviceToken.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUpdateDeviceToken**
> DeviceToken putUpdateDeviceToken(id, deviceToken)

Update put DeviceToken

Update put DeviceToken

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getDeviceTokenApi();
final int id = 56; // int | Id
final DeviceToken deviceToken = ; // DeviceToken | 

try {
    final response = api.putUpdateDeviceToken(id, deviceToken);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DeviceTokenApi->putUpdateDeviceToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 
 **deviceToken** | [**DeviceToken**](DeviceToken.md)|  | 

### Return type

[**DeviceToken**](DeviceToken.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

