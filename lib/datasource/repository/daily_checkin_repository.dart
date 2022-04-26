import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/common/exceptions/network_connection_exception.dart';
import 'package:toprate_hrm/datasource/data/remote/daily_check_in_datasource.dart';
import 'package:toprate_hrm/datasource/network/network_info.dart';

class DailyCheckInRepository {
  final NetworkInfoImpl networkInfo;

  final DailyCheckInDataSource dailyCheckInDataSource;

  DailyCheckInRepository(this.networkInfo, this.dailyCheckInDataSource);

  getAllSettingBlock() async {
    if (await networkInfo.isConnected) {
      return dailyCheckInDataSource.getAllSettingBlock();
    } else {
      throw NetworkConnectionException();
    }
  }

  getAllProject() async {
    if (await networkInfo.isConnected) {
      return dailyCheckInDataSource.getAllProject();
    } else {
      throw NetworkConnectionException();
    }
  }

  Future<Response<JsonObject>> checkIn(CheckIn checkIn) async {
    if (await networkInfo.isConnected) {
      return dailyCheckInDataSource.checkIn(checkIn);
    } else {
      throw NetworkConnectionException();
    }
  }
}