// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bonus_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BonusDetail extends BonusDetail {
  @override
  final String? bonusType;
  @override
  final double? bonusHours;
  @override
  final double? bonusPricePerHour;
  @override
  final double? totalCost;

  factory _$BonusDetail([void Function(BonusDetailBuilder)? updates]) =>
      (new BonusDetailBuilder()..update(updates)).build();

  _$BonusDetail._(
      {this.bonusType, this.bonusHours, this.bonusPricePerHour, this.totalCost})
      : super._();

  @override
  BonusDetail rebuild(void Function(BonusDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BonusDetailBuilder toBuilder() => new BonusDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BonusDetail &&
        bonusType == other.bonusType &&
        bonusHours == other.bonusHours &&
        bonusPricePerHour == other.bonusPricePerHour &&
        totalCost == other.totalCost;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, bonusType.hashCode), bonusHours.hashCode),
            bonusPricePerHour.hashCode),
        totalCost.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BonusDetail')
          ..add('bonusType', bonusType)
          ..add('bonusHours', bonusHours)
          ..add('bonusPricePerHour', bonusPricePerHour)
          ..add('totalCost', totalCost))
        .toString();
  }
}

class BonusDetailBuilder implements Builder<BonusDetail, BonusDetailBuilder> {
  _$BonusDetail? _$v;

  String? _bonusType;
  String? get bonusType => _$this._bonusType;
  set bonusType(String? bonusType) => _$this._bonusType = bonusType;

  double? _bonusHours;
  double? get bonusHours => _$this._bonusHours;
  set bonusHours(double? bonusHours) => _$this._bonusHours = bonusHours;

  double? _bonusPricePerHour;
  double? get bonusPricePerHour => _$this._bonusPricePerHour;
  set bonusPricePerHour(double? bonusPricePerHour) =>
      _$this._bonusPricePerHour = bonusPricePerHour;

  double? _totalCost;
  double? get totalCost => _$this._totalCost;
  set totalCost(double? totalCost) => _$this._totalCost = totalCost;

  BonusDetailBuilder() {
    BonusDetail._defaults(this);
  }

  BonusDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bonusType = $v.bonusType;
      _bonusHours = $v.bonusHours;
      _bonusPricePerHour = $v.bonusPricePerHour;
      _totalCost = $v.totalCost;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BonusDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BonusDetail;
  }

  @override
  void update(void Function(BonusDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BonusDetail build() {
    final _$result = _$v ??
        new _$BonusDetail._(
            bonusType: bonusType,
            bonusHours: bonusHours,
            bonusPricePerHour: bonusPricePerHour,
            totalCost: totalCost);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
