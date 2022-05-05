import 'package:toprate_hrm/blocs/base_state/base_state.dart';

abstract class LoginState extends BaseState {}

class StartLoginState extends LoginState {}

class InitLoginState extends LoginState {
  InitLoginState();
}

class LoginSuccessState extends ApiSuccessState {
  LoginSuccessState();
}

class LoginFailState extends ApiSuccessState {
  LoginFailState();
}

class GetAccountInformationSuccessState extends ApiSuccessState {

  GetAccountInformationSuccessState();
}

class SendOTPSuccessState extends ApiSuccessState {
  SendOTPSuccessState();
}

class SendOTPFailState extends ApiSuccessState {
  SendOTPFailState();
}

class ObscureState extends LoginState {
  ObscureState();
}

class ValidateLoginState extends LoginState {
  final bool valid;
  final String? message;

  ValidateLoginState(this.valid, {this.message});
}

class GetInfoUserState extends ApiSuccessState {
  GetInfoUserState();
}

class GetInfoUserFailState extends LoginState {
  GetInfoUserFailState();
}

class ChangeStatusSaveAccState extends LoginState {
  ChangeStatusSaveAccState();
}

class ValidateSwitchForgotPasswordScreenState extends LoginState {
  final bool valid;
  final String? message;

  ValidateSwitchForgotPasswordScreenState(this.valid, {this.message});
}

class SwitchForgotPasswordScreenState extends LoginState {
  SwitchForgotPasswordScreenState();
}

class AddDeviceTokenSuccessState extends ApiSuccessState {}
