// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coefficient_pay.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoefficientPay extends CoefficientPay {
  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? unit;
  @override
  final String? ratio;
  @override
  final double? unitPrice;
  @override
  final String? name;

  factory _$CoefficientPay([void Function(CoefficientPayBuilder)? updates]) =>
      (new CoefficientPayBuilder()..update(updates)).build();

  _$CoefficientPay._(
      {this.id, this.code, this.unit, this.ratio, this.unitPrice, this.name})
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
        unit == other.unit &&
        ratio == other.ratio &&
        unitPrice == other.unitPrice &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), code.hashCode), unit.hashCode),
                ratio.hashCode),
            unitPrice.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoefficientPay')
          ..add('id', id)
          ..add('code', code)
          ..add('unit', unit)
          ..add('ratio', ratio)
          ..add('unitPrice', unitPrice)
          ..add('name', name))
        .toString();
  }
}

class CoefficientPayBuilder
    implements Builder<CoefficientPay, CoefficientPayBuilder> {
  _$CoefficientPay? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  String? _ratio;
  String? get ratio => _$this._ratio;
  set ratio(String? ratio) => _$this._ratio = ratio;

  double? _unitPrice;
  double? get unitPrice => _$this._unitPrice;
  set unitPrice(double? unitPrice) => _$this._unitPrice = unitPrice;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CoefficientPayBuilder() {
    CoefficientPay._defaults(this);
  }

  CoefficientPayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _unit = $v.unit;
      _ratio = $v.ratio;
      _unitPrice = $v.unitPrice;
      _name = $v.name;
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
            id: id,
            code: code,
            unit: unit,
            ratio: ratio,
            unitPrice: unitPrice,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
