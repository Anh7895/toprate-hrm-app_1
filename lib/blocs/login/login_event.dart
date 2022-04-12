
import 'package:toprate_hrm/datasource/data/model/request/login_request.dart';

abstract class LoginEvent {}
class InitLoginEvent extends LoginEvent{
  InitLoginEvent();
}
class DoLoginEvent extends LoginEvent {
  final LoginParamRequest? paramRequest;

  DoLoginEvent({this.paramRequest});
}

class ChangeObscureEvent extends LoginEvent {
  ChangeObscureEvent();
}

class ValidateLoginEvent extends LoginEvent {
  final String? email;

  final String? password;

  ValidateLoginEvent({this.email, this.password});
}

class GetInfoEvent extends LoginEvent {}

class ChangeStatusSaveAccEvent extends LoginEvent{

  ChangeStatusSaveAccEvent();
}
class GetUserInformationEvent extends LoginEvent {
  GetUserInformationEvent();
}

class AddDeviceTokenEvent extends LoginEvent {
  AddDeviceTokenEvent();
}

class ValidateSwitchForgotPasswordScreenEvent extends LoginEvent {
  final String? email;

  final String? password;

  ValidateSwitchForgotPasswordScreenEvent({this.email, this.password});
}