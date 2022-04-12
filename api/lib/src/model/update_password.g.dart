// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePassword extends UpdatePassword {
  @override
  final String oldPassword;
  @override
  final String newPassword;
  @override
  final String confirmNewPassword;
  @override
  final int otp;

  factory _$UpdatePassword([void Function(UpdatePasswordBuilder)? updates]) =>
      (new UpdatePasswordBuilder()..update(updates)).build();

  _$UpdatePassword._(
      {required this.oldPassword,
      required this.newPassword,
      required this.confirmNewPassword,
      required this.otp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oldPassword, 'UpdatePassword', 'oldPassword');
    BuiltValueNullFieldError.checkNotNull(
        newPassword, 'UpdatePassword', 'newPassword');
    BuiltValueNullFieldError.checkNotNull(
        confirmNewPassword, 'UpdatePassword', 'confirmNewPassword');
    BuiltValueNullFieldError.checkNotNull(otp, 'UpdatePassword', 'otp');
  }

  @override
  UpdatePassword rebuild(void Function(UpdatePasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePasswordBuilder toBuilder() =>
      new UpdatePasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePassword &&
        oldPassword == other.oldPassword &&
        newPassword == other.newPassword &&
        confirmNewPassword == other.confirmNewPassword &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, oldPassword.hashCode), newPassword.hashCode),
            confirmNewPassword.hashCode),
        otp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdatePassword')
          ..add('oldPassword', oldPassword)
          ..add('newPassword', newPassword)
          ..add('confirmNewPassword', confirmNewPassword)
          ..add('otp', otp))
        .toString();
  }
}

class UpdatePasswordBuilder
    implements Builder<UpdatePassword, UpdatePasswordBuilder> {
  _$UpdatePassword? _$v;

  String? _oldPassword;
  String? get oldPassword => _$this._oldPassword;
  set oldPassword(String? oldPassword) => _$this._oldPassword = oldPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  String? _confirmNewPassword;
  String? get confirmNewPassword => _$this._confirmNewPassword;
  set confirmNewPassword(String? confirmNewPassword) =>
      _$this._confirmNewPassword = confirmNewPassword;

  int? _otp;
  int? get otp => _$this._otp;
  set otp(int? otp) => _$this._otp = otp;

  UpdatePasswordBuilder() {
    UpdatePassword._defaults(this);
  }

  UpdatePasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oldPassword = $v.oldPassword;
      _newPassword = $v.newPassword;
      _confirmNewPassword = $v.confirmNewPassword;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdatePassword;
  }

  @override
  void update(void Function(UpdatePasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdatePassword build() {
    final _$result = _$v ??
        new _$UpdatePassword._(
            oldPassword: BuiltValueNullFieldError.checkNotNull(
                oldPassword, 'UpdatePassword', 'oldPassword'),
            newPassword: BuiltValueNullFieldError.checkNotNull(
                newPassword, 'UpdatePassword', 'newPassword'),
            confirmNewPassword: BuiltValueNullFieldError.checkNotNull(
                confirmNewPassword, 'UpdatePassword', 'confirmNewPassword'),
            otp: BuiltValueNullFieldError.checkNotNull(
                otp, 'UpdatePassword', 'otp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
