// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Send extends Send {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? dateSend;
  @override
  final String? dateAt;
  @override
  final String? readAt;
  @override
  final String? status;
  @override
  final bool? isRead;
  @override
  final int? receiverId;

  factory _$Send([void Function(SendBuilder)? updates]) =>
      (new SendBuilder()..update(updates)).build();

  _$Send._(
      {this.id,
      this.title,
      this.content,
      this.dateSend,
      this.dateAt,
      this.readAt,
      this.status,
      this.isRead,
      this.receiverId})
      : super._();

  @override
  Send rebuild(void Function(SendBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendBuilder toBuilder() => new SendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Send &&
        id == other.id &&
        title == other.title &&
        content == other.content &&
        dateSend == other.dateSend &&
        dateAt == other.dateAt &&
        readAt == other.readAt &&
        status == other.status &&
        isRead == other.isRead &&
        receiverId == other.receiverId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), title.hashCode),
                                content.hashCode),
                            dateSend.hashCode),
                        dateAt.hashCode),
                    readAt.hashCode),
                status.hashCode),
            isRead.hashCode),
        receiverId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Send')
          ..add('id', id)
          ..add('title', title)
          ..add('content', content)
          ..add('dateSend', dateSend)
          ..add('dateAt', dateAt)
          ..add('readAt', readAt)
          ..add('status', status)
          ..add('isRead', isRead)
          ..add('receiverId', receiverId))
        .toString();
  }
}

class SendBuilder implements Builder<Send, SendBuilder> {
  _$Send? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _dateSend;
  String? get dateSend => _$this._dateSend;
  set dateSend(String? dateSend) => _$this._dateSend = dateSend;

  String? _dateAt;
  String? get dateAt => _$this._dateAt;
  set dateAt(String? dateAt) => _$this._dateAt = dateAt;

  String? _readAt;
  String? get readAt => _$this._readAt;
  set readAt(String? readAt) => _$this._readAt = readAt;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _isRead;
  bool? get isRead => _$this._isRead;
  set isRead(bool? isRead) => _$this._isRead = isRead;

  int? _receiverId;
  int? get receiverId => _$this._receiverId;
  set receiverId(int? receiverId) => _$this._receiverId = receiverId;

  SendBuilder() {
    Send._defaults(this);
  }

  SendBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _content = $v.content;
      _dateSend = $v.dateSend;
      _dateAt = $v.dateAt;
      _readAt = $v.readAt;
      _status = $v.status;
      _isRead = $v.isRead;
      _receiverId = $v.receiverId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Send other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Send;
  }

  @override
  void update(void Function(SendBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Send build() {
    final _$result = _$v ??
        new _$Send._(
            id: id,
            title: title,
            content: content,
            dateSend: dateSend,
            dateAt: dateAt,
            readAt: readAt,
            status: status,
            isRead: isRead,
            receiverId: receiverId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
