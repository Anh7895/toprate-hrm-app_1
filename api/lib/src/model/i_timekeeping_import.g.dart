// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_timekeeping_import.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ITimekeepingImport extends ITimekeepingImport {
  @override
  final String? url;
  @override
  final int? companyId;

  factory _$ITimekeepingImport(
          [void Function(ITimekeepingImportBuilder)? updates]) =>
      (new ITimekeepingImportBuilder()..update(updates)).build();

  _$ITimekeepingImport._({this.url, this.companyId}) : super._();

  @override
  ITimekeepingImport rebuild(
          void Function(ITimekeepingImportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ITimekeepingImportBuilder toBuilder() =>
      new ITimekeepingImportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ITimekeepingImport &&
        url == other.url &&
        companyId == other.companyId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), companyId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ITimekeepingImport')
          ..add('url', url)
          ..add('companyId', companyId))
        .toString();
  }
}

class ITimekeepingImportBuilder
    implements Builder<ITimekeepingImport, ITimekeepingImportBuilder> {
  _$ITimekeepingImport? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  ITimekeepingImportBuilder() {
    ITimekeepingImport._defaults(this);
  }

  ITimekeepingImportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _companyId = $v.companyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ITimekeepingImport other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ITimekeepingImport;
  }

  @override
  void update(void Function(ITimekeepingImportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ITimekeepingImport build() {
    final _$result =
        _$v ?? new _$ITimekeepingImport._(url: url, companyId: companyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
