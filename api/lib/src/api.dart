//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/src/serializers.dart';
import 'package:openapi/src/auth/api_key_auth.dart';
import 'package:openapi/src/auth/basic_auth.dart';
import 'package:openapi/src/auth/bearer_auth.dart';
import 'package:openapi/src/auth/oauth.dart';
import 'package:openapi/src/api/account_api.dart';
import 'package:openapi/src/api/bank_api.dart';
import 'package:openapi/src/api/candidate_api.dart';
import 'package:openapi/src/api/coefficient_pay_api.dart';
import 'package:openapi/src/api/company_api.dart';
import 'package:openapi/src/api/device_token_api.dart';
import 'package:openapi/src/api/excel_template_api.dart';
import 'package:openapi/src/api/furlough_api.dart';
import 'package:openapi/src/api/industrial_area_api.dart';
import 'package:openapi/src/api/labor_contract_api.dart';
import 'package:openapi/src/api/logs_api.dart';
import 'package:openapi/src/api/notification_api.dart';
import 'package:openapi/src/api/otp_api.dart';
import 'package:openapi/src/api/payroll_mistake_api.dart';
import 'package:openapi/src/api/payroll_mistakes_api.dart';
import 'package:openapi/src/api/permission_api.dart';
import 'package:openapi/src/api/quit_job_api.dart';
import 'package:openapi/src/api/recruitment_api.dart';
import 'package:openapi/src/api/report_api.dart';
import 'package:openapi/src/api/role_api.dart';
import 'package:openapi/src/api/s3_api.dart';
import 'package:openapi/src/api/salary_api.dart';
import 'package:openapi/src/api/send_api.dart';
import 'package:openapi/src/api/staffs_api.dart';
import 'package:openapi/src/api/timekeeping_api.dart';
import 'package:openapi/src/api/users_api.dart';
import 'package:openapi/src/api/withdrawal_api.dart';
import 'package:openapi/src/api/workers_api.dart';
import 'package:openapi/src/api/wrong_timekeeping_api.dart';

class Openapi {
  static const String basePath = r'https://api-hr.toprate.io/domain-services';

  final Dio dio;
  final Serializers serializers;

  Openapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AccountApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountApi getAccountApi() {
    return AccountApi(dio, serializers);
  }

  /// Get BankApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BankApi getBankApi() {
    return BankApi(dio, serializers);
  }

  /// Get CandidateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CandidateApi getCandidateApi() {
    return CandidateApi(dio, serializers);
  }

  /// Get CoefficientPayApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CoefficientPayApi getCoefficientPayApi() {
    return CoefficientPayApi(dio, serializers);
  }

  /// Get CompanyApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CompanyApi getCompanyApi() {
    return CompanyApi(dio, serializers);
  }

  /// Get DeviceTokenApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DeviceTokenApi getDeviceTokenApi() {
    return DeviceTokenApi(dio, serializers);
  }

  /// Get ExcelTemplateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ExcelTemplateApi getExcelTemplateApi() {
    return ExcelTemplateApi(dio, serializers);
  }

  /// Get FurloughApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FurloughApi getFurloughApi() {
    return FurloughApi(dio, serializers);
  }

  /// Get IndustrialAreaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IndustrialAreaApi getIndustrialAreaApi() {
    return IndustrialAreaApi(dio, serializers);
  }

  /// Get LaborContractApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LaborContractApi getLaborContractApi() {
    return LaborContractApi(dio, serializers);
  }

  /// Get LogsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LogsApi getLogsApi() {
    return LogsApi(dio, serializers);
  }

  /// Get NotificationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationApi getNotificationApi() {
    return NotificationApi(dio, serializers);
  }

  /// Get OtpApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OtpApi getOtpApi() {
    return OtpApi(dio, serializers);
  }

  /// Get PayrollMistakeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PayrollMistakeApi getPayrollMistakeApi() {
    return PayrollMistakeApi(dio, serializers);
  }

  /// Get PayrollMistakesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PayrollMistakesApi getPayrollMistakesApi() {
    return PayrollMistakesApi(dio, serializers);
  }

  /// Get PermissionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PermissionApi getPermissionApi() {
    return PermissionApi(dio, serializers);
  }

  /// Get QuitJobApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QuitJobApi getQuitJobApi() {
    return QuitJobApi(dio, serializers);
  }

  /// Get RecruitmentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RecruitmentApi getRecruitmentApi() {
    return RecruitmentApi(dio, serializers);
  }

  /// Get ReportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReportApi getReportApi() {
    return ReportApi(dio, serializers);
  }

  /// Get RoleApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RoleApi getRoleApi() {
    return RoleApi(dio, serializers);
  }

  /// Get S3Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  S3Api getS3Api() {
    return S3Api(dio, serializers);
  }

  /// Get SalaryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SalaryApi getSalaryApi() {
    return SalaryApi(dio, serializers);
  }

  /// Get SendApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SendApi getSendApi() {
    return SendApi(dio, serializers);
  }

  /// Get StaffsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StaffsApi getStaffsApi() {
    return StaffsApi(dio, serializers);
  }

  /// Get TimekeepingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TimekeepingApi getTimekeepingApi() {
    return TimekeepingApi(dio, serializers);
  }

  /// Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UsersApi getUsersApi() {
    return UsersApi(dio, serializers);
  }

  /// Get WithdrawalApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WithdrawalApi getWithdrawalApi() {
    return WithdrawalApi(dio, serializers);
  }

  /// Get WorkersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WorkersApi getWorkersApi() {
    return WorkersApi(dio, serializers);
  }

  /// Get WrongTimekeepingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WrongTimekeepingApi getWrongTimekeepingApi() {
    return WrongTimekeepingApi(dio, serializers);
  }
}
