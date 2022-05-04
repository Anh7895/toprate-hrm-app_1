import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:openapi/openapi.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/login/login_state.dart';
import 'package:toprate_hrm/datasource/data/remote/login_datasource.dart';
import 'package:toprate_hrm/datasource/repository/login_repository.dart';

import '../../common/resource/strings.dart';
import '../../common/utils/preference_utils.dart';
import '../../datasource/data/local_user_data.dart';
import '../../datasource/data/model/entity/chart_model.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, BaseState> {
  final LoginRepository loginRepository;
  var rAuth;
  bool edit = false;
  bool showInfo = false;
  FocusNode focusNodeFirstName = FocusNode();
  FocusNode focusNodeLastName = FocusNode();
  FocusNode focusNodeEmail = FocusNode();
  FocusNode focusNodeAddress = FocusNode();
  FocusNode focusNodePhone = FocusNode();
  FocusNode focusNodeDateOfBirth = FocusNode();
  DateTime selectedDate = DateTime.now();
  TextEditingController textFirstNameController = TextEditingController();
  TextEditingController textLastNameController = TextEditingController();
  TextEditingController textEmailController = TextEditingController();
  TextEditingController textPhoneController = TextEditingController();
  TextEditingController textAddressController = TextEditingController();
  TextEditingController textDateOfBirthController = TextEditingController();
  List<ChartData> chartData = [];

  addData(){
    chartData.add( ChartData('TopRate-HRM', 4));
    chartData.add( ChartData('ChargeNow', 8));
    chartData.add( ChartData('An phu', 6));
  }
  UserBloc(this.loginRepository) : super(UserInitial()) {
    on<UserEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<SelectedDateEvent>((event,emit){
      onSelectedToDate(event, emit);
    });
    on<InitDataEvent>((event,emit){

    });
    on<SelectedEditEvent>((event,emit){
          event.edit =!event.edit!;
          edit = event.edit!;
          print(edit);
      emit(SelectedEditState());
    });
    on<ShowInfoEvent>((event,emit){
      event.info =!event.info!;
      showInfo = event.info!;
      print(showInfo);
      emit(ShowInfoState());
    });
    on<LogoutEvent>((event,emit)async{
      await doLogout(event,emit);
    });

  }


  onSelectedToDate(SelectedDateEvent event, Emitter<BaseState> emit) async {
    textDateOfBirthController.text = event.setSelectedDate!;
    emit(SelectedDateState());
  }
  Future<void> doLogout(LogoutEvent event, Emitter<BaseState> emit) async {
    emit(StartCallApiState());
    try {
      rAuth = await loginRepository.logOut(username: LocalUserData.getInstance.user?.username,
          uuid: LocalUserData.getInstance.user?.uuid, deviceId: LocalUserData.getInstance.deviceID );
      if (rAuth != null) {
        removeAccessToken();
        removeDeviceId();
        removeUserInformation();
        removeDeviceToken();
        removeRefreshToken();
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


  removeDeviceToken() async {
    return await PreferenceUtils.setString("device_token", '');
  }
  removeUserInformation() async {
    return await PreferenceUtils.setString("user_information", '');
  }
  removeDeviceId() async {
    return await PreferenceUtils.setString("device_id", '');
  }
//Remove access token
  removeAccessToken() async {
    LocalUserData.getInstance.accessToken='';
    return await PreferenceUtils.setString("access_token", '');
  }
  removeRefreshToken() async {
    LocalUserData.getInstance.refreshToken='';
    return await PreferenceUtils.setString("refresh_token", '');
  }

}
