// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'co_report_recruitment_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$COReportRecruitmentData extends COReportRecruitmentData {
  @override
  final String? companyName;
  @override
  final int? recTotal;
  @override
  final int? applyTotal;
  @override
  final int? newEmployee;
  @override
  final int? quitEmployee;

  factory _$COReportRecruitmentData(
          [void Function(COReportRecruitmentDataBuilder)? updates]) =>
      (new COReportRecruitmentDataBuilder()..update(updates)).build();

  _$COReportRecruitmentData._(
      {this.companyName,
      this.recTotal,
      this.applyTotal,
      this.newEmployee,
      this.quitEmployee})
      : super._();

  @override
  COReportRecruitmentData rebuild(
          void Function(COReportRecruitmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  COReportRecruitmentDataBuilder toBuilder() =>
      new COReportRecruitmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is COReportRecruitmentData &&
        companyName == other.companyName &&
        recTotal == other.recTotal &&
        applyTotal == other.applyTotal &&
        newEmployee == other.newEmployee &&
        quitEmployee == other.quitEmployee;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, companyName.hashCode), recTotal.hashCode),
                applyTotal.hashCode),
            newEmployee.hashCode),
        quitEmployee.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('COReportRecruitmentData')
          ..add('companyName', companyName)
          ..add('recTotal', recTotal)
          ..add('applyTotal', applyTotal)
          ..add('newEmployee', newEmployee)
          ..add('quitEmployee', quitEmployee))
        .toString();
  }
}

class COReportRecruitmentDataBuilder
    implements
        Builder<COReportRecruitmentData, COReportRecruitmentDataBuilder> {
  _$COReportRecruitmentData? _$v;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  int? _recTotal;
  int? get recTotal => _$this._recTotal;
  set recTotal(int? recTotal) => _$this._recTotal = recTotal;

  int? _applyTotal;
  int? get applyTotal => _$this._applyTotal;
  set applyTotal(int? applyTotal) => _$this._applyTotal = applyTotal;

  int? _newEmployee;
  int? get newEmployee => _$this._newEmployee;
  set newEmployee(int? newEmployee) => _$this._newEmployee = newEmployee;

  int? _quitEmployee;
  int? get quitEmployee => _$this._quitEmployee;
  set quitEmployee(int? quitEmployee) => _$this._quitEmployee = quitEmployee;

  COReportRecruitmentDataBuilder() {
    COReportRecruitmentData._defaults(this);
  }

  COReportRecruitmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyName = $v.companyName;
      _recTotal = $v.recTotal;
      _applyTotal = $v.applyTotal;
      _newEmployee = $v.newEmployee;
      _quitEmployee = $v.quitEmployee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(COReportRecruitmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$COReportRecruitmentData;
  }

  @override
  void update(void Function(COReportRecruitmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$COReportRecruitmentData build() {
    final _$result = _$v ??
        new _$COReportRecruitmentData._(
            companyName: companyName,
            recTotal: recTotal,
            applyTotal: applyTotal,
            newEmployee: newEmployee,
            quitEmployee: quitEmployee);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
