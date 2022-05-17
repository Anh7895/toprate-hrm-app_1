import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/common/exceptions/network_connection_exception.dart';
import 'package:toprate_hrm/datasource/data/remote/daily_check_in_datasource.dart';
import 'package:toprate_hrm/datasource/network/network_info.dart';
import 'package:built_collection/src/list.dart';

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

  Future<Response<OProjectByUser>> getProjectByUser() async {
    if (await networkInfo.isConnected) {
      return dailyCheckInDataSource.getProjectByUser();
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
  Future<Response<BuiltList<COTimekeeping>>> getProjectByDate(String? date) async {
    if (await networkInfo.isConnected) {
      return dailyCheckInDataSource.getProjectByDate(date);
    } else {
      throw NetworkConnectionException();
    }
  }

  Future<Response<OTimekeepingCalendar>> getCalendar() async {
    if (await networkInfo.isConnected) {
      return dailyCheckInDataSource.getCalendar();
    } else {
      throw NetworkConnectionException();
    }
  }

  Future<Response<BuiltList<OTimekeepingCalendarSettings>>> getSetting() async {
    if (await networkInfo.isConnected) {
      return dailyCheckInDataSource.getSetting();
    } else {
      throw NetworkConnectionException();
    }
  }
}
