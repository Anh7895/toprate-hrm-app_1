// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timekeeping_salary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimekeepingSalary extends TimekeepingSalary {
  @override
  final double? totalTimeKeepingSalary;
  @override
  final BuiltList<TimekeepingSalaryDetail>? timekeepingDetail;

  factory _$TimekeepingSalary(
          [void Function(TimekeepingSalaryBuilder)? updates]) =>
      (new TimekeepingSalaryBuilder()..update(updates)).build();

  _$TimekeepingSalary._({this.totalTimeKeepingSalary, this.timekeepingDetail})
      : super._();

  @override
  TimekeepingSalary rebuild(void Function(TimekeepingSalaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimekeepingSalaryBuilder toBuilder() =>
      new TimekeepingSalaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimekeepingSalary &&
        totalTimeKeepingSalary == other.totalTimeKeepingSalary &&
        timekeepingDetail == other.timekeepingDetail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, totalTimeKeepingSalary.hashCode), timekeepingDetail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimekeepingSalary')
          ..add('totalTimeKeepingSalary', totalTimeKeepingSalary)
          ..add('timekeepingDetail', timekeepingDetail))
        .toString();
  }
}

class TimekeepingSalaryBuilder
    implements Builder<TimekeepingSalary, TimekeepingSalaryBuilder> {
  _$TimekeepingSalary? _$v;

  double? _totalTimeKeepingSalary;
  double? get totalTimeKeepingSalary => _$this._totalTimeKeepingSalary;
  set totalTimeKeepingSalary(double? totalTimeKeepingSalary) =>
      _$this._totalTimeKeepingSalary = totalTimeKeepingSalary;

  ListBuilder<TimekeepingSalaryDetail>? _timekeepingDetail;
  ListBuilder<TimekeepingSalaryDetail> get timekeepingDetail =>
      _$this._timekeepingDetail ??= new ListBuilder<TimekeepingSalaryDetail>();
  set timekeepingDetail(
          ListBuilder<TimekeepingSalaryDetail>? timekeepingDetail) =>
      _$this._timekeepingDetail = timekeepingDetail;

  TimekeepingSalaryBuilder() {
    TimekeepingSalary._defaults(this);
  }

  TimekeepingSalaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalTimeKeepingSalary = $v.totalTimeKeepingSalary;
      _timekeepingDetail = $v.timekeepingDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimekeepingSalary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimekeepingSalary;
  }

  @override
  void update(void Function(TimekeepingSalaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimekeepingSalary build() {
    _$TimekeepingSalary _$result;
    try {
      _$result = _$v ??
          new _$TimekeepingSalary._(
              totalTimeKeepingSalary: totalTimeKeepingSalary,
              timekeepingDetail: _timekeepingDetail?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timekeepingDetail';
        _timekeepingDetail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TimekeepingSalary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
