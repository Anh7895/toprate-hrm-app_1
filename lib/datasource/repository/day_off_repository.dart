import 'package:built_collection/src/list.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/common/exceptions/network_connection_exception.dart';
import 'package:toprate_hrm/datasource/data/remote/day_off_datasource.dart';
import 'package:toprate_hrm/datasource/network/network_info.dart';

class DayOffRepository {
  final NetworkInfoImpl networkInfo;

  final DayOffDataSource dayOffDataSource;

  DayOffRepository(this.networkInfo, this.dayOffDataSource);

  Future<Response<OEmailApprovers>> getEmailApprovers() async {
    if (await networkInfo.isConnected) {
      return dayOffDataSource.getEmailApprovers();
    } else {
      throw NetworkConnectionException();
    }
  }

  Future<Response<BuiltList<ReasonSettings>>> getReason() async {
    if (await networkInfo.isConnected) {
      return dayOffDataSource.getReason();
    } else {
      throw NetworkConnectionException();
    }
  }

  Future<Response<FurloughLetters>> addFurloughLetters(
      IFurloughLetters iFurloughLetters) async {
    if (await networkInfo.isConnected) {
      return dayOffDataSource.addFurloughLetters(iFurloughLetters);
    } else {
      throw NetworkConnectionException();
    }
  }
}
