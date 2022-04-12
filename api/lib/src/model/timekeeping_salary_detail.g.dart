// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timekeeping_salary_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimekeepingSalaryDetail extends TimekeepingSalaryDetail {
  @override
  final double? totalTimeKeepingSalary;
  @override
  final BuiltList<COtimekeepingDetail>? timekeepingDetail;

  factory _$TimekeepingSalaryDetail(
          [void Function(TimekeepingSalaryDetailBuilder)? updates]) =>
      (new TimekeepingSalaryDetailBuilder()..update(updates)).build();

  _$TimekeepingSalaryDetail._(
      {this.totalTimeKeepingSalary, this.timekeepingDetail})
      : super._();

  @override
  TimekeepingSalaryDetail rebuild(
          void Function(TimekeepingSalaryDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimekeepingSalaryDetailBuilder toBuilder() =>
      new TimekeepingSalaryDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimekeepingSalaryDetail &&
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
    return (newBuiltValueToStringHelper('TimekeepingSalaryDetail')
          ..add('totalTimeKeepingSalary', totalTimeKeepingSalary)
          ..add('timekeepingDetail', timekeepingDetail))
        .toString();
  }
}

class TimekeepingSalaryDetailBuilder
    implements
        Builder<TimekeepingSalaryDetail, TimekeepingSalaryDetailBuilder> {
  _$TimekeepingSalaryDetail? _$v;

  double? _totalTimeKeepingSalary;
  double? get totalTimeKeepingSalary => _$this._totalTimeKeepingSalary;
  set totalTimeKeepingSalary(double? totalTimeKeepingSalary) =>
      _$this._totalTimeKeepingSalary = totalTimeKeepingSalary;

  ListBuilder<COtimekeepingDetail>? _timekeepingDetail;
  ListBuilder<COtimekeepingDetail> get timekeepingDetail =>
      _$this._timekeepingDetail ??= new ListBuilder<COtimekeepingDetail>();
  set timekeepingDetail(ListBuilder<COtimekeepingDetail>? timekeepingDetail) =>
      _$this._timekeepingDetail = timekeepingDetail;

  TimekeepingSalaryDetailBuilder() {
    TimekeepingSalaryDetail._defaults(this);
  }

  TimekeepingSalaryDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalTimeKeepingSalary = $v.totalTimeKeepingSalary;
      _timekeepingDetail = $v.timekeepingDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimekeepingSalaryDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimekeepingSalaryDetail;
  }

  @override
  void update(void Function(TimekeepingSalaryDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimekeepingSalaryDetail build() {
    _$TimekeepingSalaryDetail _$result;
    try {
      _$result = _$v ??
          new _$TimekeepingSalaryDetail._(
              totalTimeKeepingSalary: totalTimeKeepingSalary,
              timekeepingDetail: _timekeepingDetail?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timekeepingDetail';
        _timekeepingDetail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TimekeepingSalaryDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
