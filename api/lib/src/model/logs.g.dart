// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Logs extends Logs {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final int? templateId;
  @override
  final String? data;
  @override
  final String? response;
  @override
  final String? dateSend;

  factory _$Logs([void Function(LogsBuilder)? updates]) =>
      (new LogsBuilder()..update(updates)).build();

  _$Logs._(
      {this.id,
      this.title,
      this.templateId,
      this.data,
      this.response,
      this.dateSend})
      : super._();

  @override
  Logs rebuild(void Function(LogsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogsBuilder toBuilder() => new LogsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Logs &&
        id == other.id &&
        title == other.title &&
        templateId == other.templateId &&
        data == other.data &&
        response == other.response &&
        dateSend == other.dateSend;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), title.hashCode),
                    templateId.hashCode),
                data.hashCode),
            response.hashCode),
        dateSend.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Logs')
          ..add('id', id)
          ..add('title', title)
          ..add('templateId', templateId)
          ..add('data', data)
          ..add('response', response)
          ..add('dateSend', dateSend))
        .toString();
  }
}

class LogsBuilder implements Builder<Logs, LogsBuilder> {
  _$Logs? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _templateId;
  int? get templateId => _$this._templateId;
  set templateId(int? templateId) => _$this._templateId = templateId;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  String? _dateSend;
  String? get dateSend => _$this._dateSend;
  set dateSend(String? dateSend) => _$this._dateSend = dateSend;

  LogsBuilder() {
    Logs._defaults(this);
  }

  LogsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _templateId = $v.templateId;
      _data = $v.data;
      _response = $v.response;
      _dateSend = $v.dateSend;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Logs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Logs;
  }

  @override
  void update(void Function(LogsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Logs build() {
    final _$result = _$v ??
        new _$Logs._(
            id: id,
            title: title,
            templateId: templateId,
            data: data,
            response: response,
            dateSend: dateSend);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
