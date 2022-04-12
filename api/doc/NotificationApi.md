# openapi.api.NotificationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-hr.toprate.io/domain-services*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addNotification**](NotificationApi.md#addnotification) | **POST** /notifications | Add Notification
[**getAllNotification**](NotificationApi.md#getallnotification) | **GET** /notifications | Get all Notification
[**getByIdNotification**](NotificationApi.md#getbyidnotification) | **GET** /notifications/{id} | Get by id Notification


# **addNotification**
> Notification addNotification(cNotification)

Add Notification

Add Notification

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getNotificationApi();
final CNotification cNotification = ; // CNotification | 

try {
    final response = api.addNotification(cNotification);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationApi->addNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cNotification** | [**CNotification**](CNotification.md)|  | 

### Return type

[**Notification**](Notification.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllNotification**
> JsonObject getAllNotification(limit, page, orderBy, companyId, fromDateSendGe, toDateSendLe)

Get all Notification

Get all Notification

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getNotificationApi();
final String limit = limit_example; // String | Limit
final String page = page_example; // String | Page
final String orderBy = orderBy_example; // String | Order by
final int companyId = 56; // int | company_id
final String fromDateSendGe = fromDateSendGe_example; // String | from_date_send__ge
final String toDateSendLe = toDateSendLe_example; // String | to_date_send__le

try {
    final response = api.getAllNotification(limit, page, orderBy, companyId, fromDateSendGe, toDateSendLe);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationApi->getAllNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **String**| Limit | [optional] [default to '10']
 **page** | **String**| Page | [optional] [default to '1']
 **orderBy** | **String**| Order by | [optional] [default to 'id ASC']
 **companyId** | **int**| company_id | [optional] 
 **fromDateSendGe** | **String**| from_date_send__ge | [optional] [default to '10-03-2022']
 **toDateSendLe** | **String**| to_date_send__le | [optional] [default to '10-10-2022']

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdNotification**
> Notification getByIdNotification(id)

Get by id Notification

Get by id Notification

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Bearer
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Bearer').password = 'YOUR_PASSWORD';

final api = Openapi().getNotificationApi();
final int id = 56; // int | Id

try {
    final response = api.getByIdNotification(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NotificationApi->getByIdNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id | 

### Return type

[**Notification**](Notification.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

