import 'dart:async';
import 'dart:io';

import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/utils/preference_utils.dart';
import 'package:toprate_hrm/datasource/data/local_user_data.dart';
import 'package:toprate_hrm/datasource/data/model/response/login_model.dart';
import 'package:toprate_hrm/datasource/repository/login_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:built_value/json_object.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_event.dart';
import 'login_state.dart';


class LoginBloc extends Bloc<LoginEvent, BaseState> {
  SharedPreferences? localStorage;
  final LoginRepository loginRepository;
  LoginModel? getInfoResponse;
  OWhoAmI? user;
  RAuth? rAuth;
  bool isObscure = true;

  TextEditingController emailController = TextEditingController();
  FocusNode focusNodeEmail = FocusNode();

  TextEditingController passwordController = TextEditingController();
  FocusNode focusNodePassword = FocusNode();
  TextEditingController confirmPassWordController = TextEditingController();
  bool saveAcc = true;

  String loginUrl = '';

  LoginBloc(this.loginRepository)
      : super(StartLoginState()) {
    ///Change Obscure
    on<ChangeObscureEvent>((event, emit){
      isObscure = !isObscure;
      emit(ObscureState());
    });
    ///Fill Acc
    on<InitLoginEvent>((event, emit) async {
      emit(InitLoginState());
    });

    ///Validate
    on<ValidateLoginEvent>((event, emit) {
      if (emailController.text == '') {
        emit(ValidateLoginState(false,
            message: 'Trường dữ liệu Tên đăng nhập chưa nhập thông tin'));
        return;
      }
      if(passwordController.text == ''){
        emit(ValidateLoginState(false,
            message: 'Trường dữ liệu Mật khẩu chưa nhập thông tin'));
        return;
      }
      add(DoLoginEvent());
    });

    ///ValidateSwitchForgotPassword
    on<ValidateSwitchForgotPasswordScreenEvent>((event, emit) {
      if (emailController.text == '') {
        emit(ValidateSwitchForgotPasswordScreenState(false,
            message: 'Vui lòng nhập tên đăng nhập'));
      } else {
        emit(SwitchForgotPasswordScreenState());
      }
    });

    ///Handle Login
    on<DoLoginEvent>((event, emit) => doLogin(event, emit));

    on<ChangeStatusSaveAccEvent>((event, emit) {
      saveAcc = !saveAcc;
      emit(ChangeStatusSaveAccState());
    });
  }

  Future<void> doLogin(DoLoginEvent event, Emitter<BaseState> emit) async {
    emit(StartCallApiState());
    try {
      rAuth = await loginRepository.login(username: emailController.text.trim(), password: passwordController.text.trim());
      if (rAuth != null) {
        LocalUserData.getInstance.accessToken = rAuth?.accessToken??'';
        await saveToken(rAuth?.accessToken);
        LocalUserData.getInstance.refreshToken = rAuth?.refreshToken??'';
        await saveRefreshToken(rAuth?.refreshToken);
        emit(LoginSuccessState());
        // await Future.wait([future1, future2]);
        add(GetUserInformationEvent());
      }
    } on DioError catch (e) {
      List<String> err = [];
      print(e.response?.statusCode);
      if (e.response?.statusCode == HttpStatus.unauthorized ||
          e.response?.statusCode == HttpStatus.badRequest) {
        print(e.response);

        if (e.response?.data['messages'] != null) {
          if (e.response?.data['messages']['username'] != null) {
            err =
            List<String>.from(e.response?.data['messages']['username']);
          }
          if (e.response?.data['messages']['password'] != null) {
            err = List<String>.from(
                e.response?.data['messages']['password']);
          }
        }
      }
      emit(
          ApiErrorState(error: e,
              errorMessage: e.response?.data['message'] ?? err.toString()));
    } catch (e) {
      emit(
          ApiErrorState(
              errorMessage: TextConstants.text101Err));
    }
  }

  //Save Token Login
  saveToken(String? accessToken) async {
    return await PreferenceUtils.setString("access_token", accessToken ?? "");
  }

  //Save Refresh Token
  saveRefreshToken(String? refreshToken) async {
    return await PreferenceUtils.setString("refresh_token", refreshToken ?? "");
  }

  //Save User Login
  saveUserLogin(LoginModel? userModel) async {
    return await PreferenceUtils.saveUserLogin(userModel);
  }

  saveAccountInformation(OWhoAmI? user) async {
    return await PreferenceUtils.saveAccountInformation(user);
  }


  Future<String?> _getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      // import 'dart:io'
      var iosDeviceInfo = await deviceInfo.iosInfo;
      LocalUserData.getInstance.saveDeviceId(deviceID: iosDeviceInfo.identifierForVendor);
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      LocalUserData.getInstance.saveDeviceId(deviceID: androidDeviceInfo.androidId);
      print("Device ID: ${androidDeviceInfo.androidId}");
      return androidDeviceInfo.androidId; // unique ID on Android
    }
  }

}
