import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/datasource/network/dio/api_client.dart';

class DailyCheckInDataSource {
  final ApiClient apiClient;

  DailyCheckInDataSource(this.apiClient);

  Future getAllSettingBlock() async {
    final response = await apiClient.getSettingBlockApi().getAllSettingBlock();
    return response.data?.asMap;
  }

  Future getAllProject() async {
    final response = await apiClient.getProjectApi().getAllProject();
    return response.data?.asMap;
  }

  Future<Response<JsonObject>> checkIn(CheckIn checkIn) async {
    print(checkIn);
    final response =
        await apiClient.getTimekeepingApi().checkIn(checkIn: checkIn);
    return response;
  }
}
