import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/login/login_state.dart';
import 'package:toprate_hrm/datasource/data/remote/login_datasource.dart';
import 'package:toprate_hrm/datasource/repository/login_repository.dart';

import '../../common/resource/strings.dart';
import '../../datasource/data/local_user_data.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, BaseState> {
  final LoginRepository loginRepository;
  var rAuth;
  UserBloc(this.loginRepository) : super(UserInitial()) {
    on<UserEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<LogoutEvent>((event,emit)async{
      await doLogout(event,emit);
    });

  }
  Future<void> doLogout(LogoutEvent event, Emitter<BaseState> emit) async {

    print("ok");
    emit(StartCallApiState());
    try {
      rAuth = await loginRepository.logOut(username: LocalUserData.getInstance.user?.username,
          uuid: LocalUserData.getInstance.user?.uuid, deviceId: LocalUserData.getInstance.deviceID );
      if (rAuth != null) {
        LocalUserData.getInstance.user = '';

        emit(LogoutSuccessState());
      }
      else emit(LogoutFailState());
    } on DioError catch (e) {
      List<String> err = [];
      print(e.response?.statusCode);
      if (e.response?.statusCode == HttpStatus.unauthorized ||
          e.response?.statusCode == HttpStatus.badRequest) {
        if(e.response?.data["errors"] != null){
          return emit(ApiErrorState(errorMessage: e.response!.data["message"].toString()));
        }else
          return emit(ApiErrorState(errorMessage: e.response!.data["message"].toString()));
      }
     return emit(
          ApiErrorState(error: e,
              errorMessage: e.response?.data['message'] ?? err.toString()));
    } catch (e) {
      emit(
          ApiErrorState(
              errorMessage: TextConstants.text101Err));
    }


  }


}
