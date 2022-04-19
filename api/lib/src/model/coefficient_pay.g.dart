// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coefficient_pay.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoefficientPay extends CoefficientPay {
  @override
  final String? id;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final String? desc;
  @override
  final String? status;

  factory _$CoefficientPay([void Function(CoefficientPayBuilder)? updates]) =>
      (new CoefficientPayBuilder()..update(updates)).build();

  _$CoefficientPay._({this.id, this.code, this.name, this.desc, this.status})
      : super._();

  @override
  CoefficientPay rebuild(void Function(CoefficientPayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoefficientPayBuilder toBuilder() =>
      new CoefficientPayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoefficientPay &&
        id == other.id &&
        code == other.code &&
        name == other.name &&
        desc == other.desc &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), code.hashCode), name.hashCode),
            desc.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoefficientPay')
          ..add('id', id)
          ..add('code', code)
          ..add('name', name)
          ..add('desc', desc)
          ..add('status', status))
        .toString();
  }
}

class CoefficientPayBuilder
    implements Builder<CoefficientPay, CoefficientPayBuilder> {
  _$CoefficientPay? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  CoefficientPayBuilder() {
    CoefficientPay._defaults(this);
  }

  CoefficientPayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _name = $v.name;
      _desc = $v.desc;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoefficientPay other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoefficientPay;
  }

  @override
  void update(void Function(CoefficientPayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CoefficientPay build() {
    final _$result = _$v ??
        new _$CoefficientPay._(
            id: id, code: code, name: name, desc: desc, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
