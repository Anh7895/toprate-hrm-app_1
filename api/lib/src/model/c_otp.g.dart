// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'c_otp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$COtp extends COtp {
  @override
  final num? expiresIn;
  @override
  final num? code;

  factory _$COtp([void Function(COtpBuilder)? updates]) =>
      (new COtpBuilder()..update(updates)).build();

  _$COtp._({this.expiresIn, this.code}) : super._();

  @override
  COtp rebuild(void Function(COtpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  COtpBuilder toBuilder() => new COtpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is COtp && expiresIn == other.expiresIn && code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, expiresIn.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('COtp')
          ..add('expiresIn', expiresIn)
          ..add('code', code))
        .toString();
  }
}

class COtpBuilder implements Builder<COtp, COtpBuilder> {
  _$COtp? _$v;

  num? _expiresIn;
  num? get expiresIn => _$this._expiresIn;
  set expiresIn(num? expiresIn) => _$this._expiresIn = expiresIn;

  num? _code;
  num? get code => _$this._code;
  set code(num? code) => _$this._code = code;

  COtpBuilder() {
    COtp._defaults(this);
  }

  COtpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expiresIn = $v.expiresIn;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(COtp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$COtp;
  }

  @override
  void update(void Function(COtpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$COtp build() {
    final _$result = _$v ?? new _$COtp._(expiresIn: expiresIn, code: code);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
