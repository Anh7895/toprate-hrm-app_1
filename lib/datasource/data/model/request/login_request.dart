import 'package:equatable/equatable.dart';

class LoginParamRequest extends Equatable {
  final String email;
  final String password;

  LoginParamRequest(this.email, this.password);

  @override
  List<Object> get props => [email, password];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}