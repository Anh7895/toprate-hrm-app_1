// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'r_auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RAuth extends RAuth {
  @override
  final String? accessToken;
  @override
  final int? expiresIn;
  @override
  final int? refreshExpiresIn;
  @override
  final String? refreshToken;
  @override
  final String? tokenType;
  @override
  final String? sessionState;
  @override
  final String? scope;

  factory _$RAuth([void Function(RAuthBuilder)? updates]) =>
      (new RAuthBuilder()..update(updates)).build();

  _$RAuth._(
      {this.accessToken,
      this.expiresIn,
      this.refreshExpiresIn,
      this.refreshToken,
      this.tokenType,
      this.sessionState,
      this.scope})
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
        accessToken == other.accessToken &&
        expiresIn == other.expiresIn &&
        refreshExpiresIn == other.refreshExpiresIn &&
        refreshToken == other.refreshToken &&
        tokenType == other.tokenType &&
        sessionState == other.sessionState &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, accessToken.hashCode), expiresIn.hashCode),
                        refreshExpiresIn.hashCode),
                    refreshToken.hashCode),
                tokenType.hashCode),
            sessionState.hashCode),
        scope.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RAuth')
          ..add('accessToken', accessToken)
          ..add('expiresIn', expiresIn)
          ..add('refreshExpiresIn', refreshExpiresIn)
          ..add('refreshToken', refreshToken)
          ..add('tokenType', tokenType)
          ..add('sessionState', sessionState)
          ..add('scope', scope))
        .toString();
  }
}

class RAuthBuilder implements Builder<RAuth, RAuthBuilder> {
  _$RAuth? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  int? _refreshExpiresIn;
  int? get refreshExpiresIn => _$this._refreshExpiresIn;
  set refreshExpiresIn(int? refreshExpiresIn) =>
      _$this._refreshExpiresIn = refreshExpiresIn;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  String? _sessionState;
  String? get sessionState => _$this._sessionState;
  set sessionState(String? sessionState) => _$this._sessionState = sessionState;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  RAuthBuilder() {
    RAuth._defaults(this);
  }

  RAuthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _expiresIn = $v.expiresIn;
      _refreshExpiresIn = $v.refreshExpiresIn;
      _refreshToken = $v.refreshToken;
      _tokenType = $v.tokenType;
      _sessionState = $v.sessionState;
      _scope = $v.scope;
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
            accessToken: accessToken,
            expiresIn: expiresIn,
            refreshExpiresIn: refreshExpiresIn,
            refreshToken: refreshToken,
            tokenType: tokenType,
            sessionState: sessionState,
            scope: scope);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
