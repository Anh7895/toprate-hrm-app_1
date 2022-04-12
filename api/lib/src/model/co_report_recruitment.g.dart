// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'co_report_recruitment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$COReportRecruitment extends COReportRecruitment {
  @override
  final BuiltList<COReportRecruitmentData>? data;
  @override
  final Total? total;

  factory _$COReportRecruitment(
          [void Function(COReportRecruitmentBuilder)? updates]) =>
      (new COReportRecruitmentBuilder()..update(updates)).build();

  _$COReportRecruitment._({this.data, this.total}) : super._();

  @override
  COReportRecruitment rebuild(
          void Function(COReportRecruitmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  COReportRecruitmentBuilder toBuilder() =>
      new COReportRecruitmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is COReportRecruitment &&
        data == other.data &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('COReportRecruitment')
          ..add('data', data)
          ..add('total', total))
        .toString();
  }
}

class COReportRecruitmentBuilder
    implements Builder<COReportRecruitment, COReportRecruitmentBuilder> {
  _$COReportRecruitment? _$v;

  ListBuilder<COReportRecruitmentData>? _data;
  ListBuilder<COReportRecruitmentData> get data =>
      _$this._data ??= new ListBuilder<COReportRecruitmentData>();
  set data(ListBuilder<COReportRecruitmentData>? data) => _$this._data = data;

  TotalBuilder? _total;
  TotalBuilder get total => _$this._total ??= new TotalBuilder();
  set total(TotalBuilder? total) => _$this._total = total;

  COReportRecruitmentBuilder() {
    COReportRecruitment._defaults(this);
  }

  COReportRecruitmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _total = $v.total?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(COReportRecruitment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$COReportRecruitment;
  }

  @override
  void update(void Function(COReportRecruitmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$COReportRecruitment build() {
    _$COReportRecruitment _$result;
    try {
      _$result = _$v ??
          new _$COReportRecruitment._(
              data: _data?.build(), total: _total?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'total';
        _total?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'COReportRecruitment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
