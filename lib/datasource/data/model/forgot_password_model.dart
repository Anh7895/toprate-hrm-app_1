import 'package:equatable/equatable.dart';

class ForgotPasswordModel extends Equatable{

  ForgotPasswordModel({
    this.username,
    this.password,
    this.confirm_password,
    this.otp,
});
  String? username;
  String? password;
  String? confirm_password;
  String? otp;

  ForgotPasswordModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    confirm_password = json['confirm_password'];
    otp = json['otp'];
  }
  Map<String, dynamic> toCreateApplicationJson() {
    final _data = <String, dynamic>{};
    _data['username'] = username;
    _data['password'] = password;
    _data['confirm_password'] = confirm_password;
    _data['otp'] = otp;
    return _data;
  }
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}