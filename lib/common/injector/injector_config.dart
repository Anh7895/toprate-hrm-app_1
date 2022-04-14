import 'package:toprate_hrm/blocs/daily_checkin/daily_check_in_bloc.dart';
import 'package:toprate_hrm/blocs/dashboard/dashboard_bloc.dart';
import 'package:toprate_hrm/blocs/day_off/day_off_bloc.dart';
import 'package:toprate_hrm/blocs/login/login_bloc.dart';
import 'package:toprate_hrm/blocs/notification/notification_bloc.dart';
import 'package:toprate_hrm/blocs/splash/splash_bloc.dart';
import 'package:toprate_hrm/datasource/data/remote/login_datasource.dart';
import 'package:toprate_hrm/datasource/network/dio/api_client.dart';
import 'package:toprate_hrm/datasource/network/dio/dio_client.dart';
import 'package:toprate_hrm/datasource/network/network_info.dart';
import 'package:toprate_hrm/datasource/repository/login_repository.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';
import 'package:openapi/openapi.dart';

part 'injector_config.g.dart';

abstract class InjectorConfig {
  static KiwiContainer? container;

  static void setup() {
    container = KiwiContainer();
    final injector = _$InjectorConfig();
    // ignore: cascade_invocations
    injector._configure();
  }

  // ignore: type_annotate_public_apis
  static final resolve = container?.resolve;

  void _configure() {
    _configureInsuranceModule();
  }

  void _configureInsuranceModule() {
    _configureBlocs();
    _configureRepositories();
    _configureDataSources();
    _configureExternal();
    _configureCommon();
    _configureDio();
  }

  @Register.factory(SplashBloc)
  @Register.factory(DashboardBloc)
  @Register.factory(LoginBloc)
  @Register.factory(DailyCheckInBloc)
  @Register.factory(DayOffBloc)
  @Register.factory(NotificationBloc)
  void _configureBlocs();

  @Register.factory(LoginRepository)
  void _configureRepositories();

  @Register.factory(LoginDataSource)
  void _configureDataSources();

  @Register.factory(ApiClient)
  @Register.factory(Openapi)
  void _configureExternal();

  @Register.factory(DioClient)
  void _configureDio();

  @Register.factory(NetworkInfoImpl)
  void _configureCommon();
}
