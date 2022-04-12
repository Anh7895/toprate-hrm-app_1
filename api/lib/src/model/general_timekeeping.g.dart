// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_timekeeping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GeneralTimekeeping extends GeneralTimekeeping {
  @override
  final int? id;
  @override
  final String? coefficientPayCode;
  @override
  final double? unit;
  @override
  final Date? date;
  @override
  final int? companyId;
  @override
  final int? userId;
  @override
  final double? unitPricePerHour;
  @override
  final BuiltList<CoefficientPay>? coefficientPay;

  factory _$GeneralTimekeeping(
          [void Function(GeneralTimekeepingBuilder)? updates]) =>
      (new GeneralTimekeepingBuilder()..update(updates)).build();

  _$GeneralTimekeeping._(
      {this.id,
      this.coefficientPayCode,
      this.unit,
      this.date,
      this.companyId,
      this.userId,
      this.unitPricePerHour,
      this.coefficientPay})
      : super._();

  @override
  GeneralTimekeeping rebuild(
          void Function(GeneralTimekeepingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeneralTimekeepingBuilder toBuilder() =>
      new GeneralTimekeepingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneralTimekeeping &&
        id == other.id &&
        coefficientPayCode == other.coefficientPayCode &&
        unit == other.unit &&
        date == other.date &&
        companyId == other.companyId &&
        userId == other.userId &&
        unitPricePerHour == other.unitPricePerHour &&
        coefficientPay == other.coefficientPay;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, id.hashCode),
                                coefficientPayCode.hashCode),
                            unit.hashCode),
                        date.hashCode),
                    companyId.hashCode),
                userId.hashCode),
            unitPricePerHour.hashCode),
        coefficientPay.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeneralTimekeeping')
          ..add('id', id)
          ..add('coefficientPayCode', coefficientPayCode)
          ..add('unit', unit)
          ..add('date', date)
          ..add('companyId', companyId)
          ..add('userId', userId)
          ..add('unitPricePerHour', unitPricePerHour)
          ..add('coefficientPay', coefficientPay))
        .toString();
  }
}

class GeneralTimekeepingBuilder
    implements Builder<GeneralTimekeeping, GeneralTimekeepingBuilder> {
  _$GeneralTimekeeping? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _coefficientPayCode;
  String? get coefficientPayCode => _$this._coefficientPayCode;
  set coefficientPayCode(String? coefficientPayCode) =>
      _$this._coefficientPayCode = coefficientPayCode;

  double? _unit;
  double? get unit => _$this._unit;
  set unit(double? unit) => _$this._unit = unit;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  double? _unitPricePerHour;
  double? get unitPricePerHour => _$this._unitPricePerHour;
  set unitPricePerHour(double? unitPricePerHour) =>
      _$this._unitPricePerHour = unitPricePerHour;

  ListBuilder<CoefficientPay>? _coefficientPay;
  ListBuilder<CoefficientPay> get coefficientPay =>
      _$this._coefficientPay ??= new ListBuilder<CoefficientPay>();
  set coefficientPay(ListBuilder<CoefficientPay>? coefficientPay) =>
      _$this._coefficientPay = coefficientPay;

  GeneralTimekeepingBuilder() {
    GeneralTimekeeping._defaults(this);
  }

  GeneralTimekeepingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _coefficientPayCode = $v.coefficientPayCode;
      _unit = $v.unit;
      _date = $v.date;
      _companyId = $v.companyId;
      _userId = $v.userId;
      _unitPricePerHour = $v.unitPricePerHour;
      _coefficientPay = $v.coefficientPay?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeneralTimekeeping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeneralTimekeeping;
  }

  @override
  void update(void Function(GeneralTimekeepingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeneralTimekeeping build() {
    _$GeneralTimekeeping _$result;
    try {
      _$result = _$v ??
          new _$GeneralTimekeeping._(
              id: id,
              coefficientPayCode: coefficientPayCode,
              unit: unit,
              date: date,
              companyId: companyId,
              userId: userId,
              unitPricePerHour: unitPricePerHour,
              coefficientPay: _coefficientPay?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coefficientPay';
        _coefficientPay?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GeneralTimekeeping', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
