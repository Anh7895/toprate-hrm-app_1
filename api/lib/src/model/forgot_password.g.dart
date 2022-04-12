// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForgotPassword extends ForgotPassword {
  @override
  final String username;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final int? otp;

  factory _$ForgotPassword([void Function(ForgotPasswordBuilder)? updates]) =>
      (new ForgotPasswordBuilder()..update(updates)).build();

  _$ForgotPassword._(
      {required this.username,
      required this.password,
      required this.confirmPassword,
      this.otp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'ForgotPassword', 'username');
    BuiltValueNullFieldError.checkNotNull(
        password, 'ForgotPassword', 'password');
    BuiltValueNullFieldError.checkNotNull(
        confirmPassword, 'ForgotPassword', 'confirmPassword');
  }

  @override
  ForgotPassword rebuild(void Function(ForgotPasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForgotPasswordBuilder toBuilder() =>
      new ForgotPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgotPassword &&
        username == other.username &&
        password == other.password &&
        confirmPassword == other.confirmPassword &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, username.hashCode), password.hashCode),
            confirmPassword.hashCode),
        otp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForgotPassword')
          ..add('username', username)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword)
          ..add('otp', otp))
        .toString();
  }
}

class ForgotPasswordBuilder
    implements Builder<ForgotPassword, ForgotPasswordBuilder> {
  _$ForgotPassword? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  int? _otp;
  int? get otp => _$this._otp;
  set otp(int? otp) => _$this._otp = otp;

  ForgotPasswordBuilder() {
    ForgotPassword._defaults(this);
  }

  ForgotPasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgotPassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForgotPassword;
  }

  @override
  void update(void Function(ForgotPasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ForgotPassword build() {
    final _$result = _$v ??
        new _$ForgotPassword._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'ForgotPassword', 'username'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'ForgotPassword', 'password'),
            confirmPassword: BuiltValueNullFieldError.checkNotNull(
                confirmPassword, 'ForgotPassword', 'confirmPassword'),
            otp: otp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
