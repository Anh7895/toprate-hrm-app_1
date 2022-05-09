import 'package:built_collection/src/list.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/datasource/network/dio/api_client.dart';

class DayOffDataSource {
  final ApiClient apiClient;

  DayOffDataSource(this.apiClient);

  Future<Response<BuiltList<ReasonSettings>>> getReason() async {
    final response = await apiClient.getFurloughLettersApi().getReason();
    return response;
  }

  Future<Response<OEmailApprovers>> getEmailApprovers() async {
    final response =
        await apiClient.getFurloughLettersApi().getEmailApprovers();
    return response;
  }

  Future<Response<FurloughLetters>> addFurloughLetters(
      IFurloughLetters iFurloughLetters) async {
    final response = await apiClient
        .getFurloughLettersApi()
        .addFurloughLetters(iFurloughLetters: iFurloughLetters);
    return response;
  }
}
