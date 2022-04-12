// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_timekeeping_timekeeping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalendarTimekeepingTimekeeping extends CalendarTimekeepingTimekeeping {
  @override
  final BuiltList<Timekeeping>? dayShift;
  @override
  final BuiltList<Timekeeping>? nightShift;
  @override
  final BuiltList<Timekeeping>? dayHoliday;
  @override
  final BuiltList<Timekeeping>? nightHoliday;
  @override
  final BuiltList<Timekeeping>? dayOvertime;
  @override
  final BuiltList<Timekeeping>? nightOvertime;

  factory _$CalendarTimekeepingTimekeeping(
          [void Function(CalendarTimekeepingTimekeepingBuilder)? updates]) =>
      (new CalendarTimekeepingTimekeepingBuilder()..update(updates)).build();

  _$CalendarTimekeepingTimekeeping._(
      {this.dayShift,
      this.nightShift,
      this.dayHoliday,
      this.nightHoliday,
      this.dayOvertime,
      this.nightOvertime})
      : super._();

  @override
  CalendarTimekeepingTimekeeping rebuild(
          void Function(CalendarTimekeepingTimekeepingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarTimekeepingTimekeepingBuilder toBuilder() =>
      new CalendarTimekeepingTimekeepingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarTimekeepingTimekeeping &&
        dayShift == other.dayShift &&
        nightShift == other.nightShift &&
        dayHoliday == other.dayHoliday &&
        nightHoliday == other.nightHoliday &&
        dayOvertime == other.dayOvertime &&
        nightOvertime == other.nightOvertime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, dayShift.hashCode), nightShift.hashCode),
                    dayHoliday.hashCode),
                nightHoliday.hashCode),
            dayOvertime.hashCode),
        nightOvertime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CalendarTimekeepingTimekeeping')
          ..add('dayShift', dayShift)
          ..add('nightShift', nightShift)
          ..add('dayHoliday', dayHoliday)
          ..add('nightHoliday', nightHoliday)
          ..add('dayOvertime', dayOvertime)
          ..add('nightOvertime', nightOvertime))
        .toString();
  }
}

class CalendarTimekeepingTimekeepingBuilder
    implements
        Builder<CalendarTimekeepingTimekeeping,
            CalendarTimekeepingTimekeepingBuilder> {
  _$CalendarTimekeepingTimekeeping? _$v;

  ListBuilder<Timekeeping>? _dayShift;
  ListBuilder<Timekeeping> get dayShift =>
      _$this._dayShift ??= new ListBuilder<Timekeeping>();
  set dayShift(ListBuilder<Timekeeping>? dayShift) =>
      _$this._dayShift = dayShift;

  ListBuilder<Timekeeping>? _nightShift;
  ListBuilder<Timekeeping> get nightShift =>
      _$this._nightShift ??= new ListBuilder<Timekeeping>();
  set nightShift(ListBuilder<Timekeeping>? nightShift) =>
      _$this._nightShift = nightShift;

  ListBuilder<Timekeeping>? _dayHoliday;
  ListBuilder<Timekeeping> get dayHoliday =>
      _$this._dayHoliday ??= new ListBuilder<Timekeeping>();
  set dayHoliday(ListBuilder<Timekeeping>? dayHoliday) =>
      _$this._dayHoliday = dayHoliday;

  ListBuilder<Timekeeping>? _nightHoliday;
  ListBuilder<Timekeeping> get nightHoliday =>
      _$this._nightHoliday ??= new ListBuilder<Timekeeping>();
  set nightHoliday(ListBuilder<Timekeeping>? nightHoliday) =>
      _$this._nightHoliday = nightHoliday;

  ListBuilder<Timekeeping>? _dayOvertime;
  ListBuilder<Timekeeping> get dayOvertime =>
      _$this._dayOvertime ??= new ListBuilder<Timekeeping>();
  set dayOvertime(ListBuilder<Timekeeping>? dayOvertime) =>
      _$this._dayOvertime = dayOvertime;

  ListBuilder<Timekeeping>? _nightOvertime;
  ListBuilder<Timekeeping> get nightOvertime =>
      _$this._nightOvertime ??= new ListBuilder<Timekeeping>();
  set nightOvertime(ListBuilder<Timekeeping>? nightOvertime) =>
      _$this._nightOvertime = nightOvertime;

  CalendarTimekeepingTimekeepingBuilder() {
    CalendarTimekeepingTimekeeping._defaults(this);
  }

  CalendarTimekeepingTimekeepingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dayShift = $v.dayShift?.toBuilder();
      _nightShift = $v.nightShift?.toBuilder();
      _dayHoliday = $v.dayHoliday?.toBuilder();
      _nightHoliday = $v.nightHoliday?.toBuilder();
      _dayOvertime = $v.dayOvertime?.toBuilder();
      _nightOvertime = $v.nightOvertime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarTimekeepingTimekeeping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CalendarTimekeepingTimekeeping;
  }

  @override
  void update(void Function(CalendarTimekeepingTimekeepingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CalendarTimekeepingTimekeeping build() {
    _$CalendarTimekeepingTimekeeping _$result;
    try {
      _$result = _$v ??
          new _$CalendarTimekeepingTimekeeping._(
              dayShift: _dayShift?.build(),
              nightShift: _nightShift?.build(),
              dayHoliday: _dayHoliday?.build(),
              nightHoliday: _nightHoliday?.build(),
              dayOvertime: _dayOvertime?.build(),
              nightOvertime: _nightOvertime?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dayShift';
        _dayShift?.build();
        _$failedField = 'nightShift';
        _nightShift?.build();
        _$failedField = 'dayHoliday';
        _dayHoliday?.build();
        _$failedField = 'nightHoliday';
        _nightHoliday?.build();
        _$failedField = 'dayOvertime';
        _dayOvertime?.build();
        _$failedField = 'nightOvertime';
        _nightOvertime?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CalendarTimekeepingTimekeeping', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
