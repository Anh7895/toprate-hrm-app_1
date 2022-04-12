// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_wrong_timekeeping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddWrongTimekeeping extends AddWrongTimekeeping {
  @override
  final String? date;
  @override
  final double? hour;
  @override
  final int? coefficientPayId;

  factory _$AddWrongTimekeeping(
          [void Function(AddWrongTimekeepingBuilder)? updates]) =>
      (new AddWrongTimekeepingBuilder()..update(updates)).build();

  _$AddWrongTimekeeping._({this.date, this.hour, this.coefficientPayId})
      : super._();

  @override
  AddWrongTimekeeping rebuild(
          void Function(AddWrongTimekeepingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddWrongTimekeepingBuilder toBuilder() =>
      new AddWrongTimekeepingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddWrongTimekeeping &&
        date == other.date &&
        hour == other.hour &&
        coefficientPayId == other.coefficientPayId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, date.hashCode), hour.hashCode), coefficientPayId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddWrongTimekeeping')
          ..add('date', date)
          ..add('hour', hour)
          ..add('coefficientPayId', coefficientPayId))
        .toString();
  }
}

class AddWrongTimekeepingBuilder
    implements Builder<AddWrongTimekeeping, AddWrongTimekeepingBuilder> {
  _$AddWrongTimekeeping? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  double? _hour;
  double? get hour => _$this._hour;
  set hour(double? hour) => _$this._hour = hour;

  int? _coefficientPayId;
  int? get coefficientPayId => _$this._coefficientPayId;
  set coefficientPayId(int? coefficientPayId) =>
      _$this._coefficientPayId = coefficientPayId;

  AddWrongTimekeepingBuilder() {
    AddWrongTimekeeping._defaults(this);
  }

  AddWrongTimekeepingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _hour = $v.hour;
      _coefficientPayId = $v.coefficientPayId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddWrongTimekeeping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddWrongTimekeeping;
  }

  @override
  void update(void Function(AddWrongTimekeepingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddWrongTimekeeping build() {
    final _$result = _$v ??
        new _$AddWrongTimekeeping._(
            date: date, hour: hour, coefficientPayId: coefficientPayId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
