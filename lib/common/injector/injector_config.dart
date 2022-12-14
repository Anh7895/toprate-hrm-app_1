import 'package:toprate_hrm/blocs/checkin/checkin_bloc.dart';
import 'package:toprate_hrm/blocs/daily_checkin/daily_check_in_bloc.dart';
import 'package:toprate_hrm/blocs/dashboard/dashboard_bloc.dart';
import 'package:toprate_hrm/blocs/day_off/day_off_bloc.dart';
import 'package:toprate_hrm/blocs/edit_day_off/edit_day_off_bloc.dart';
import 'package:toprate_hrm/blocs/login/login_bloc.dart';
import 'package:toprate_hrm/blocs/my_day_off/my_day_off_bloc.dart';
import 'package:toprate_hrm/blocs/notification/notification_bloc.dart';
import 'package:toprate_hrm/blocs/report/report_bloc.dart';
import 'package:toprate_hrm/blocs/splash/splash_bloc.dart';
import 'package:toprate_hrm/blocs/user/user_bloc.dart';
import 'package:toprate_hrm/datasource/data/remote/daily_check_in_datasource.dart';
import 'package:toprate_hrm/datasource/data/remote/day_off_datasource.dart';
import 'package:toprate_hrm/datasource/data/remote/login_datasource.dart';
import 'package:toprate_hrm/datasource/network/dio/api_client.dart';
import 'package:toprate_hrm/datasource/network/dio/dio_client.dart';
import 'package:toprate_hrm/datasource/network/network_info.dart';
import 'package:toprate_hrm/datasource/repository/daily_checkin_repository.dart';
import 'package:toprate_hrm/datasource/repository/day_off_repository.dart';
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
  @Register.factory(CheckinBloc)
  @Register.factory(DashboardBloc)
  @Register.factory(LoginBloc)
  @Register.factory(DailyCheckInBloc)
  @Register.factory(DayOffBloc)
  @Register.factory(NotificationBloc)
  @Register.factory(UserBloc)
  @Register.factory(ReportBloc)
  @Register.factory(MyDayOffBloc)
  @Register.factory(EditDayOffBloc)
  void _configureBlocs();

  @Register.factory(LoginRepository)
  @Register.factory(DailyCheckInRepository)
  @Register.factory(DayOffRepository)
  void _configureRepositories();

  @Register.factory(LoginDataSource)
  @Register.factory(DailyCheckInDataSource)
  @Register.factory(DayOffDataSource)
  void _configureDataSources();

  @Register.factory(ApiClient)
  @Register.factory(Openapi)
  void _configureExternal();

  @Register.factory(DioClient)
  void _configureDio();

  @Register.factory(NetworkInfoImpl)
  void _configureCommon();
}
