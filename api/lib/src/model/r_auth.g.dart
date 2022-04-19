// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'r_auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RAuth extends RAuth {
  @override
  final String? tokenType;
  @override
  final String? accessToken;
  @override
  final int? expiresIn;
  @override
  final String? refreshToken;

  factory _$RAuth([void Function(RAuthBuilder)? updates]) =>
      (new RAuthBuilder()..update(updates)).build();

  _$RAuth._(
      {this.tokenType, this.accessToken, this.expiresIn, this.refreshToken})
      : super._();

  @override
  RAuth rebuild(void Function(RAuthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RAuthBuilder toBuilder() => new RAuthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RAuth &&
        tokenType == other.tokenType &&
        accessToken == other.accessToken &&
        expiresIn == other.expiresIn &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, tokenType.hashCode), accessToken.hashCode),
            expiresIn.hashCode),
        refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RAuth')
          ..add('tokenType', tokenType)
          ..add('accessToken', accessToken)
          ..add('expiresIn', expiresIn)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class RAuthBuilder implements Builder<RAuth, RAuthBuilder> {
  _$RAuth? _$v;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  RAuthBuilder() {
    RAuth._defaults(this);
  }

  RAuthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenType = $v.tokenType;
      _accessToken = $v.accessToken;
      _expiresIn = $v.expiresIn;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RAuth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RAuth;
  }

  @override
  void update(void Function(RAuthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RAuth build() {
    final _$result = _$v ??
        new _$RAuth._(
            tokenType: tokenType,
            accessToken: accessToken,
            expiresIn: expiresIn,
            refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
