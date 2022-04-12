// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deduction_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeductionDetail extends DeductionDetail {
  @override
  final String? deductionType;
  @override
  final double? deductionHours;
  @override
  final double? deductionPricePerHour;
  @override
  final double? totalCost;

  factory _$DeductionDetail([void Function(DeductionDetailBuilder)? updates]) =>
      (new DeductionDetailBuilder()..update(updates)).build();

  _$DeductionDetail._(
      {this.deductionType,
      this.deductionHours,
      this.deductionPricePerHour,
      this.totalCost})
      : super._();

  @override
  DeductionDetail rebuild(void Function(DeductionDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeductionDetailBuilder toBuilder() =>
      new DeductionDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeductionDetail &&
        deductionType == other.deductionType &&
        deductionHours == other.deductionHours &&
        deductionPricePerHour == other.deductionPricePerHour &&
        totalCost == other.totalCost;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, deductionType.hashCode), deductionHours.hashCode),
            deductionPricePerHour.hashCode),
        totalCost.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeductionDetail')
          ..add('deductionType', deductionType)
          ..add('deductionHours', deductionHours)
          ..add('deductionPricePerHour', deductionPricePerHour)
          ..add('totalCost', totalCost))
        .toString();
  }
}

class DeductionDetailBuilder
    implements Builder<DeductionDetail, DeductionDetailBuilder> {
  _$DeductionDetail? _$v;

  String? _deductionType;
  String? get deductionType => _$this._deductionType;
  set deductionType(String? deductionType) =>
      _$this._deductionType = deductionType;

  double? _deductionHours;
  double? get deductionHours => _$this._deductionHours;
  set deductionHours(double? deductionHours) =>
      _$this._deductionHours = deductionHours;

  double? _deductionPricePerHour;
  double? get deductionPricePerHour => _$this._deductionPricePerHour;
  set deductionPricePerHour(double? deductionPricePerHour) =>
      _$this._deductionPricePerHour = deductionPricePerHour;

  double? _totalCost;
  double? get totalCost => _$this._totalCost;
  set totalCost(double? totalCost) => _$this._totalCost = totalCost;

  DeductionDetailBuilder() {
    DeductionDetail._defaults(this);
  }

  DeductionDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deductionType = $v.deductionType;
      _deductionHours = $v.deductionHours;
      _deductionPricePerHour = $v.deductionPricePerHour;
      _totalCost = $v.totalCost;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeductionDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeductionDetail;
  }

  @override
  void update(void Function(DeductionDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeductionDetail build() {
    final _$result = _$v ??
        new _$DeductionDetail._(
            deductionType: deductionType,
            deductionHours: deductionHours,
            deductionPricePerHour: deductionPricePerHour,
            totalCost: totalCost);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
