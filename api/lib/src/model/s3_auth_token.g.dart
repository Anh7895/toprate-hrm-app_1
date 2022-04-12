// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_auth_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3AuthToken extends S3AuthToken {
  @override
  final int? status;
  @override
  final S3AuthTokenCredentials? credentials;
  @override
  final S3AuthTokenPackage? package;

  factory _$S3AuthToken([void Function(S3AuthTokenBuilder)? updates]) =>
      (new S3AuthTokenBuilder()..update(updates)).build();

  _$S3AuthToken._({this.status, this.credentials, this.package}) : super._();

  @override
  S3AuthToken rebuild(void Function(S3AuthTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3AuthTokenBuilder toBuilder() => new S3AuthTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3AuthToken &&
        status == other.status &&
        credentials == other.credentials &&
        package == other.package;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, status.hashCode), credentials.hashCode), package.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('S3AuthToken')
          ..add('status', status)
          ..add('credentials', credentials)
          ..add('package', package))
        .toString();
  }
}

class S3AuthTokenBuilder implements Builder<S3AuthToken, S3AuthTokenBuilder> {
  _$S3AuthToken? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  S3AuthTokenCredentialsBuilder? _credentials;
  S3AuthTokenCredentialsBuilder get credentials =>
      _$this._credentials ??= new S3AuthTokenCredentialsBuilder();
  set credentials(S3AuthTokenCredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  S3AuthTokenPackageBuilder? _package;
  S3AuthTokenPackageBuilder get package =>
      _$this._package ??= new S3AuthTokenPackageBuilder();
  set package(S3AuthTokenPackageBuilder? package) => _$this._package = package;

  S3AuthTokenBuilder() {
    S3AuthToken._defaults(this);
  }

  S3AuthTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _credentials = $v.credentials?.toBuilder();
      _package = $v.package?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3AuthToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3AuthToken;
  }

  @override
  void update(void Function(S3AuthTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$S3AuthToken build() {
    _$S3AuthToken _$result;
    try {
      _$result = _$v ??
          new _$S3AuthToken._(
              status: status,
              credentials: _credentials?.build(),
              package: _package?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentials';
        _credentials?.build();
        _$failedField = 'package';
        _package?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'S3AuthToken', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
