// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Total extends Total {
  @override
  final int? recruitmentNews;
  @override
  final int? recruitmentApply;
  @override
  final int? newEmployee;
  @override
  final int? quitjobEmployee;

  factory _$Total([void Function(TotalBuilder)? updates]) =>
      (new TotalBuilder()..update(updates)).build();

  _$Total._(
      {this.recruitmentNews,
      this.recruitmentApply,
      this.newEmployee,
      this.quitjobEmployee})
      : super._();

  @override
  Total rebuild(void Function(TotalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TotalBuilder toBuilder() => new TotalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Total &&
        recruitmentNews == other.recruitmentNews &&
        recruitmentApply == other.recruitmentApply &&
        newEmployee == other.newEmployee &&
        quitjobEmployee == other.quitjobEmployee;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, recruitmentNews.hashCode), recruitmentApply.hashCode),
            newEmployee.hashCode),
        quitjobEmployee.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Total')
          ..add('recruitmentNews', recruitmentNews)
          ..add('recruitmentApply', recruitmentApply)
          ..add('newEmployee', newEmployee)
          ..add('quitjobEmployee', quitjobEmployee))
        .toString();
  }
}

class TotalBuilder implements Builder<Total, TotalBuilder> {
  _$Total? _$v;

  int? _recruitmentNews;
  int? get recruitmentNews => _$this._recruitmentNews;
  set recruitmentNews(int? recruitmentNews) =>
      _$this._recruitmentNews = recruitmentNews;

  int? _recruitmentApply;
  int? get recruitmentApply => _$this._recruitmentApply;
  set recruitmentApply(int? recruitmentApply) =>
      _$this._recruitmentApply = recruitmentApply;

  int? _newEmployee;
  int? get newEmployee => _$this._newEmployee;
  set newEmployee(int? newEmployee) => _$this._newEmployee = newEmployee;

  int? _quitjobEmployee;
  int? get quitjobEmployee => _$this._quitjobEmployee;
  set quitjobEmployee(int? quitjobEmployee) =>
      _$this._quitjobEmployee = quitjobEmployee;

  TotalBuilder() {
    Total._defaults(this);
  }

  TotalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recruitmentNews = $v.recruitmentNews;
      _recruitmentApply = $v.recruitmentApply;
      _newEmployee = $v.newEmployee;
      _quitjobEmployee = $v.quitjobEmployee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Total other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Total;
  }

  @override
  void update(void Function(TotalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Total build() {
    final _$result = _$v ??
        new _$Total._(
            recruitmentNews: recruitmentNews,
            recruitmentApply: recruitmentApply,
            newEmployee: newEmployee,
            quitjobEmployee: quitjobEmployee);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
