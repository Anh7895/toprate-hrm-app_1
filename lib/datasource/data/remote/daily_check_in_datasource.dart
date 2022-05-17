import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/datasource/network/dio/api_client.dart';
import 'package:built_collection/src/list.dart';


class DailyCheckInDataSource {
  final ApiClient apiClient;

  DailyCheckInDataSource(this.apiClient);

  Future getAllSettingBlock() async {
    final response = await apiClient.getSettingBlockApi().getAllSettingBlock();
    return response.data?.asMap;
  }

  Future<Response<OProjectByUser>> getProjectByUser() async {
    final response = await apiClient.getProjectApi().getProjectByUser();
    return response;
  }

  Future<Response<JsonObject>> checkIn(CheckIn checkIn) async {
    print(checkIn);
    final response =
        await apiClient.getTimekeepingApi().checkIn(checkIn: checkIn);
    return response;
  }

  Future<Response<BuiltList<COTimekeeping>>> getProjectByDate(String? date) async {
    final response = await apiClient.getTimekeepingApi().getTimekeepingByUserAndByDate(date: date);
    return response;
  }

  Future<Response<OTimekeepingCalendar>> getCalendar() async {
    final response = await apiClient.getTimekeepingApi().getTimekeepingCalendar();
    return response;
  }

  Future<Response<BuiltList<OTimekeepingCalendarSettings>>> getSetting() async {
    final response = await apiClient.getTimekeepingApi().getTimekeepingCalendarSettings();
    return response;
  }

}
