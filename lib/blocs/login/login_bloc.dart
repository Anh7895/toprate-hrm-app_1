import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:openapi/openapi.dart';
import 'package:openapi/openapi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/home/home_bloc.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/utils/preference_utils.dart';
import 'package:toprate_hrm/datasource/data/local_user_data.dart';
import 'package:toprate_hrm/datasource/data/model/response/login_model.dart';
import 'package:toprate_hrm/datasource/repository/login_repository.dart';

import 'login_event.dart';
import 'login_state.dart';


class LoginBloc extends Bloc<LoginEvent, BaseState> {
  SharedPreferences? localStorage;
  final LoginRepository loginRepository;
  LoginModel? getInfoResponse;
  OWhoAmI? oWhoAmI;
  RAuth? rAuth;
  String? email;
  String? username;
  bool isObscure = true;
  GoogleSignIn signIn = GoogleSignIn();
  TextEditingController emailController = TextEditingController();
  FocusNode focusNodeEmail = FocusNode();
  LocalUserData localUserData = LocalUserData();
  TextEditingController passwordController = TextEditingController();
  FocusNode focusNodePassword = FocusNode();
  TextEditingController confirmPassWordController = TextEditingController();
  bool saveAcc = true;

  String loginUrl = '';

  LoginBloc(this.loginRepository)
      : super(StartLoginState()) {

    ///Handle Login Google
    on<GoogleLoginEvent>((event, emit)async{

      await doLogin(event, emit);

    });
    ///Get User Information
    on<GetUserInformationEvent>((event,emit)=>getUserInfo(event, emit));
    // on<AddDeviceTokenEvent>((event,emit)=>addDeviceToken(emit, "626623ddd3b95ad2690b9e73"));
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
            message: 'Tr?????ng d??? li???u T??n ????ng nh???p ch??a nh???p th??ng tin'));
        return;
      }
      if(passwordController.text == ''){
        emit(ValidateLoginState(false,
            message: 'Tr?????ng d??? li???u M???t kh???u ch??a nh???p th??ng tin'));
        return;
      }
      add(DoLoginEvent());
    });

    ///ValidateSwitchForgotPassword
    on<ValidateSwitchForgotPasswordScreenEvent>((event, emit) {
      if (emailController.text == '') {
        emit(ValidateSwitchForgotPasswordScreenState(false,
            message: 'Vui l??ng nh???p t??n ????ng nh???p'));
      } else {
        emit(SwitchForgotPasswordScreenState());
      }
    });

    ///Handle Login
    // on<DoLoginEvent>((event, emit) => doLogin(event, emit));

    on<ChangeStatusSaveAccEvent>((event, emit) {
      saveAcc = !saveAcc;
      emit(ChangeStatusSaveAccState());
    });
  }

  //handle login, check mail valid
  Future<void> doLogin(GoogleLoginEvent event, Emitter<BaseState> emit) async {

    LocalUserData.getInstance.accessToken = event.assetToken!;
    if(event.email!.endsWith("toprate.io")){
      emit(StartCallApiState());
      try {
        final rAuth= await loginRepository.socialLogin(LocalUserData.getInstance.accessToken);

          LocalUserData.getInstance.accessToken = rAuth.accessToken??'';
          await saveToken(rAuth.accessToken);
          LocalUserData.getInstance.refreshToken = rAuth.refreshToken??'';
          await saveRefreshToken(rAuth.refreshToken);
        add(GetUserInformationEvent());
        emit(LoginSuccessState());
      } on DioError catch (e) {
        List<String> err = [];
        print(e.response?.statusCode);
        if(e.response?.statusCode == HttpStatus.badRequest
            || e.response?.statusCode == HttpStatus.unprocessableEntity){
          if(e.response?.data["errors"] != null){
            return emit(ApiErrorState(errorMessage: e.response!.data["message"].toString()));
          }
          return emit(ApiErrorState(errorMessage: e.response!.data["message"].toString()));
        }
        return
        emit(
            ApiErrorState(error: e,
                errorMessage: e.response?.data['message'] ?? err.toString()));
      } catch (e) {
        return emit(
            ApiErrorState(
                errorMessage: TextConstants.text101Err));
      }
    }
    else {
      emit(LoginFailState());
    }

  }

  Future<void> getUserInfo(GetUserInformationEvent event, Emitter<BaseState> emit) async {
    emit(StartCallApiState());
    try {
      final oWhoAmI = await loginRepository.userInfo();
      if (oWhoAmI != null) {
        await saveAccountInformation(oWhoAmI);
        LocalUserData.getInstance.user = oWhoAmI;
        await addDeviceToken(emit, LocalUserData.getInstance.user?.id);
        emit(GetInfoUserState());
       // add(AddDeviceTokenEvent());
      }
      else{
        emit(  ApiErrorState(
            errorMessage: "Get Info User Fail"));
        //emit(LoginFailState());
      }

    } on DioError catch (e) {
    print(e.response?.statusCode);
    if (e.response?.statusCode == HttpStatus.unauthorized ||
        e.response?.statusCode == HttpStatus.badRequest) {
      if(e.response?.data["errors"] != null){
        return emit(ApiErrorState(errorMessage: e.response!.data["message"].toString()));
      }else
      return emit(ApiErrorState(errorMessage: e.response!.data["message"].toString()));
    }
    else return emit(
        ApiErrorState(error: e,
            errorMessage: e.response?.data['message'] ?? ""));
    } catch (e) {
      return emit(
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
    return await PreferenceUtils.saveAccount(user);
  }


  Future<String?> _getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      // import 'dart:io'
      var iosDeviceInfo = await deviceInfo.iosInfo;
      LocalUserData.getInstance
          .saveDeviceId(deviceID: iosDeviceInfo.identifierForVendor);
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      LocalUserData.getInstance
          .saveDeviceId(deviceID: androidDeviceInfo.androidId);
      // print("Device ID: ${androidDeviceInfo.androidId}");
      return androidDeviceInfo.androidId; // unique ID on Android
    }
  }

  addDeviceToken(Emitter<BaseState> emit, String? userId) async {
    try {
      emit(StartCallApiState());
      // Get the token each time the application loads
      // final token = await FirebaseMessaging.instance.getToken();
      // print("Token Firebase $token");
      final DeviceTokenBuilder builder = DeviceTokenBuilder();
      String type = "ANDROID";
      if (Platform.isIOS) {
        type = "IOS";
      }
      builder.userId = userId;
      builder.token = LocalUserData.getInstance.deviceToken;
      builder.type = type;
      builder.deviceId = await _getId();
      LocalUserData.getInstance.deviceID = builder.deviceId;
      // print("DeviceToken ${builder.build()}");
      final response = await loginRepository.addDeviceToken(builder.build());
      if (response.data == null) {
        //print("Error: data is null");
        emit(ApiErrorState(errorMessage: "No data from your device"));
      } else {
        emit(AddDeviceTokenSuccessState());
      }
    } on DioError catch (e) {
      emit(ApiErrorState(error: e));
      print("ApiErrorState $e");
    } catch (e) {
      emit(ApiErrorState(errorMessage: TextConstants.text101Err));
    }
  }
}
