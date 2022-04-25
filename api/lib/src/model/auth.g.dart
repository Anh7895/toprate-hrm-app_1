// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Auth extends Auth {
  @override
  final String accessToken;

  factory _$Auth([void Function(AuthBuilder)? updates]) =>
      (new AuthBuilder()..update(updates)).build();

  _$Auth._({required this.accessToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(accessToken, 'Auth', 'accessToken');
  }

  @override
  Auth rebuild(void Function(AuthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthBuilder toBuilder() => new AuthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Auth && accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, accessToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Auth')
          ..add('accessToken', accessToken))
        .toString();
  }
}

class AuthBuilder implements Builder<Auth, AuthBuilder> {
  _$Auth? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  AuthBuilder() {
    Auth._defaults(this);
  }

  AuthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Auth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Auth;
  }

  @override
  void update(void Function(AuthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Auth build() {
    final _$result = _$v ??
        new _$Auth._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, 'Auth', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
