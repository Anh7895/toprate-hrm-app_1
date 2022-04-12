// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'c_send.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CSend extends CSend {
  @override
  final int? id;
  @override
  final String? status;
  @override
  final bool? isRead;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? receiveDate;

  factory _$CSend([void Function(CSendBuilder)? updates]) =>
      (new CSendBuilder()..update(updates)).build();

  _$CSend._(
      {this.id,
      this.status,
      this.isRead,
      this.title,
      this.content,
      this.receiveDate})
      : super._();

  @override
  CSend rebuild(void Function(CSendBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CSendBuilder toBuilder() => new CSendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CSend &&
        id == other.id &&
        status == other.status &&
        isRead == other.isRead &&
        title == other.title &&
        content == other.content &&
        receiveDate == other.receiveDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), status.hashCode), isRead.hashCode),
                title.hashCode),
            content.hashCode),
        receiveDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CSend')
          ..add('id', id)
          ..add('status', status)
          ..add('isRead', isRead)
          ..add('title', title)
          ..add('content', content)
          ..add('receiveDate', receiveDate))
        .toString();
  }
}

class CSendBuilder implements Builder<CSend, CSendBuilder> {
  _$CSend? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _isRead;
  bool? get isRead => _$this._isRead;
  set isRead(bool? isRead) => _$this._isRead = isRead;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _receiveDate;
  String? get receiveDate => _$this._receiveDate;
  set receiveDate(String? receiveDate) => _$this._receiveDate = receiveDate;

  CSendBuilder() {
    CSend._defaults(this);
  }

  CSendBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _isRead = $v.isRead;
      _title = $v.title;
      _content = $v.content;
      _receiveDate = $v.receiveDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CSend other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CSend;
  }

  @override
  void update(void Function(CSendBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CSend build() {
    final _$result = _$v ??
        new _$CSend._(
            id: id,
            status: status,
            isRead: isRead,
            title: title,
            content: content,
            receiveDate: receiveDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
