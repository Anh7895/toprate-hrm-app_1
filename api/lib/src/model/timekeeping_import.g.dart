// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timekeeping_import.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimekeepingImport extends TimekeepingImport {
  @override
  final String? url;
  @override
  final int? companyId;

  factory _$TimekeepingImport(
          [void Function(TimekeepingImportBuilder)? updates]) =>
      (new TimekeepingImportBuilder()..update(updates)).build();

  _$TimekeepingImport._({this.url, this.companyId}) : super._();

  @override
  TimekeepingImport rebuild(void Function(TimekeepingImportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimekeepingImportBuilder toBuilder() =>
      new TimekeepingImportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimekeepingImport &&
        url == other.url &&
        companyId == other.companyId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), companyId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimekeepingImport')
          ..add('url', url)
          ..add('companyId', companyId))
        .toString();
  }
}

class TimekeepingImportBuilder
    implements Builder<TimekeepingImport, TimekeepingImportBuilder> {
  _$TimekeepingImport? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  TimekeepingImportBuilder() {
    TimekeepingImport._defaults(this);
  }

  TimekeepingImportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _companyId = $v.companyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimekeepingImport other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimekeepingImport;
  }

  @override
  void update(void Function(TimekeepingImportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimekeepingImport build() {
    final _$result =
        _$v ?? new _$TimekeepingImport._(url: url, companyId: companyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
