//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/co_report_recruitment.dart';

class ReportApi {

  final Dio _dio;

  final Serializers _serializers;

  const ReportApi(this._dio, this._serializers);

  /// reportRecruitments
  /// reportRecruitments
  ///
  /// Parameters:
  /// * [period] - period
  /// * [areaId] - area_id
  /// * [number] - number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [COReportRecruitment] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<COReportRecruitment>> reportRecruitments({ 
    String? period = 'string',
    int? areaId,
    String? number = 'm-Y',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reports/recruitment';
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
      if (period != null) r'period': encodeQueryParameter(_serializers, period, const FullType(String)),
      if (areaId != null) r'area_id': encodeQueryParameter(_serializers, areaId, const FullType(int)),
      if (number != null) r'number': encodeQueryParameter(_serializers, number, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    COReportRecruitment _responseData;

    try {
      const _responseType = FullType(COReportRecruitment);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as COReportRecruitment;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<COReportRecruitment>(
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
