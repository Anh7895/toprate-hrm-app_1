// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allowance_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllowanceDetail extends AllowanceDetail {
  @override
  final String? allowanceType;
  @override
  final double? allowanceHours;
  @override
  final double? allowancePricePerHour;
  @override
  final double? totalCost;

  factory _$AllowanceDetail([void Function(AllowanceDetailBuilder)? updates]) =>
      (new AllowanceDetailBuilder()..update(updates)).build();

  _$AllowanceDetail._(
      {this.allowanceType,
      this.allowanceHours,
      this.allowancePricePerHour,
      this.totalCost})
      : super._();

  @override
  AllowanceDetail rebuild(void Function(AllowanceDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllowanceDetailBuilder toBuilder() =>
      new AllowanceDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllowanceDetail &&
        allowanceType == other.allowanceType &&
        allowanceHours == other.allowanceHours &&
        allowancePricePerHour == other.allowancePricePerHour &&
        totalCost == other.totalCost;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, allowanceType.hashCode), allowanceHours.hashCode),
            allowancePricePerHour.hashCode),
        totalCost.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AllowanceDetail')
          ..add('allowanceType', allowanceType)
          ..add('allowanceHours', allowanceHours)
          ..add('allowancePricePerHour', allowancePricePerHour)
          ..add('totalCost', totalCost))
        .toString();
  }
}

class AllowanceDetailBuilder
    implements Builder<AllowanceDetail, AllowanceDetailBuilder> {
  _$AllowanceDetail? _$v;

  String? _allowanceType;
  String? get allowanceType => _$this._allowanceType;
  set allowanceType(String? allowanceType) =>
      _$this._allowanceType = allowanceType;

  double? _allowanceHours;
  double? get allowanceHours => _$this._allowanceHours;
  set allowanceHours(double? allowanceHours) =>
      _$this._allowanceHours = allowanceHours;

  double? _allowancePricePerHour;
  double? get allowancePricePerHour => _$this._allowancePricePerHour;
  set allowancePricePerHour(double? allowancePricePerHour) =>
      _$this._allowancePricePerHour = allowancePricePerHour;

  double? _totalCost;
  double? get totalCost => _$this._totalCost;
  set totalCost(double? totalCost) => _$this._totalCost = totalCost;

  AllowanceDetailBuilder() {
    AllowanceDetail._defaults(this);
  }

  AllowanceDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowanceType = $v.allowanceType;
      _allowanceHours = $v.allowanceHours;
      _allowancePricePerHour = $v.allowancePricePerHour;
      _totalCost = $v.totalCost;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllowanceDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllowanceDetail;
  }

  @override
  void update(void Function(AllowanceDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllowanceDetail build() {
    final _$result = _$v ??
        new _$AllowanceDetail._(
            allowanceType: allowanceType,
            allowanceHours: allowanceHours,
            allowancePricePerHour: allowancePricePerHour,
            totalCost: totalCost);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
