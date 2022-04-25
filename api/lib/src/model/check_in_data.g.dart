// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckInData extends CheckInData {
  @override
  final String? projectId;
  @override
  final String? coefficientPayId;
  @override
  final String? time;

  factory _$CheckInData([void Function(CheckInDataBuilder)? updates]) =>
      (new CheckInDataBuilder()..update(updates)).build();

  _$CheckInData._({this.projectId, this.coefficientPayId, this.time})
      : super._();

  @override
  CheckInData rebuild(void Function(CheckInDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckInDataBuilder toBuilder() => new CheckInDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckInData &&
        projectId == other.projectId &&
        coefficientPayId == other.coefficientPayId &&
        time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, projectId.hashCode), coefficientPayId.hashCode),
        time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckInData')
          ..add('projectId', projectId)
          ..add('coefficientPayId', coefficientPayId)
          ..add('time', time))
        .toString();
  }
}

class CheckInDataBuilder implements Builder<CheckInData, CheckInDataBuilder> {
  _$CheckInData? _$v;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _coefficientPayId;
  String? get coefficientPayId => _$this._coefficientPayId;
  set coefficientPayId(String? coefficientPayId) =>
      _$this._coefficientPayId = coefficientPayId;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  CheckInDataBuilder() {
    CheckInData._defaults(this);
  }

  CheckInDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectId = $v.projectId;
      _coefficientPayId = $v.coefficientPayId;
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckInData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckInData;
  }

  @override
  void update(void Function(CheckInDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckInData build() {
    final _$result = _$v ??
        new _$CheckInData._(
            projectId: projectId,
            coefficientPayId: coefficientPayId,
            time: time);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
