// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_auth_token_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3AuthTokenCredentials extends S3AuthTokenCredentials {
  @override
  final String? accessKeyId;
  @override
  final String? secretAccessKey;
  @override
  final String? sessionToken;
  @override
  final String? expiration;

  factory _$S3AuthTokenCredentials(
          [void Function(S3AuthTokenCredentialsBuilder)? updates]) =>
      (new S3AuthTokenCredentialsBuilder()..update(updates)).build();

  _$S3AuthTokenCredentials._(
      {this.accessKeyId,
      this.secretAccessKey,
      this.sessionToken,
      this.expiration})
      : super._();

  @override
  S3AuthTokenCredentials rebuild(
          void Function(S3AuthTokenCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3AuthTokenCredentialsBuilder toBuilder() =>
      new S3AuthTokenCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3AuthTokenCredentials &&
        accessKeyId == other.accessKeyId &&
        secretAccessKey == other.secretAccessKey &&
        sessionToken == other.sessionToken &&
        expiration == other.expiration;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, accessKeyId.hashCode), secretAccessKey.hashCode),
            sessionToken.hashCode),
        expiration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('S3AuthTokenCredentials')
          ..add('accessKeyId', accessKeyId)
          ..add('secretAccessKey', secretAccessKey)
          ..add('sessionToken', sessionToken)
          ..add('expiration', expiration))
        .toString();
  }
}

class S3AuthTokenCredentialsBuilder
    implements Builder<S3AuthTokenCredentials, S3AuthTokenCredentialsBuilder> {
  _$S3AuthTokenCredentials? _$v;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  String? _secretAccessKey;
  String? get secretAccessKey => _$this._secretAccessKey;
  set secretAccessKey(String? secretAccessKey) =>
      _$this._secretAccessKey = secretAccessKey;

  String? _sessionToken;
  String? get sessionToken => _$this._sessionToken;
  set sessionToken(String? sessionToken) => _$this._sessionToken = sessionToken;

  String? _expiration;
  String? get expiration => _$this._expiration;
  set expiration(String? expiration) => _$this._expiration = expiration;

  S3AuthTokenCredentialsBuilder() {
    S3AuthTokenCredentials._defaults(this);
  }

  S3AuthTokenCredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKeyId = $v.accessKeyId;
      _secretAccessKey = $v.secretAccessKey;
      _sessionToken = $v.sessionToken;
      _expiration = $v.expiration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3AuthTokenCredentials other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3AuthTokenCredentials;
  }

  @override
  void update(void Function(S3AuthTokenCredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$S3AuthTokenCredentials build() {
    final _$result = _$v ??
        new _$S3AuthTokenCredentials._(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            expiration: expiration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
