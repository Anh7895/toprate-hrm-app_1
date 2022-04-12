//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_value/json_object.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/list_payroll_mistakes.dart';
import 'package:openapi/src/model/pagination.dart';
import 'package:openapi/src/model/payroll_mistake.dart';

class PayrollMistakesApi {

  final Dio _dio;

  final Serializers _serializers;

  const PayrollMistakesApi(this._dio, this._serializers);

  /// Get all Payroll Mistakes
  /// Get all Payroll Mistakes
  ///
  /// Parameters:
  /// * [limit] - Limit
  /// * [page] - Page
  /// * [orderBy] - Order by
  /// * [fullNamePayrollMistake] - full_name_payroll_mistake
  /// * [companyId] - company_id
  /// * [userCodeTilde] - user_code__~
  /// * [month] - month
  /// * [status] - status
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [JsonObject] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<JsonObject>> getAllPayrollMistakes({ 
    String? limit = '10',
    String? page = '1',
    String? orderBy = 'id ASC',
    String? fullNamePayrollMistake = 'string',
    int? companyId,
    String? userCodeTilde = 'string',
    String? month = '03-2022',
    String? status = 'pending',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/payroll-mistake';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(String)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(String)),
      if (orderBy != null) r'order_by': encodeQueryParameter(_serializers, orderBy, const FullType(String)),
      if (fullNamePayrollMistake != null) r'full_name_payroll_mistake': encodeQueryParameter(_serializers, fullNamePayrollMistake, const FullType(String)),
      if (companyId != null) r'company_id': encodeQueryParameter(_serializers, companyId, const FullType(int)),
      if (userCodeTilde != null) r'user_code__~': encodeQueryParameter(_serializers, userCodeTilde, const FullType(String)),
      if (month != null) r'month': encodeQueryParameter(_serializers, month, const FullType(String)),
      if (status != null) r'status': encodeQueryParameter(_serializers, status, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    JsonObject _responseData;

    try {
      const _responseType = FullType(JsonObject);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as JsonObject;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<JsonObject>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Update put payroll mistakes
  /// Update put payroll mistakes
  ///
  /// Parameters:
  /// * [id] - Id
  /// * [payrollMistake] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PayrollMistake] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<PayrollMistake>> putUpdateStatusPayrollMistakes({ 
    required int id,
    required PayrollMistake payrollMistake,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/payroll-mistake/{id}'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'Bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(PayrollMistake);
      _bodyData = _serializers.serialize(payrollMistake, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PayrollMistake _responseData;

    try {
      const _responseType = FullType(PayrollMistake);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as PayrollMistake;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<PayrollMistake>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
