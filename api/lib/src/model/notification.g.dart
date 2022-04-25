// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Notification extends Notification {
  @override
  final int? id;
  @override
  final int? templateId;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? dateSend;
  @override
  final String? type;
  @override
  final String? isAllDay;
  @override
  final String? status;
  @override
  final int? createdBy;

  factory _$Notification([void Function(NotificationBuilder)? updates]) =>
      (new NotificationBuilder()..update(updates)).build();

  _$Notification._(
      {this.id,
      this.templateId,
      this.title,
      this.content,
      this.dateSend,
      this.type,
      this.isAllDay,
      this.status,
      this.createdBy})
      : super._();

  @override
  Notification rebuild(void Function(NotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationBuilder toBuilder() => new NotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notification &&
        id == other.id &&
        templateId == other.templateId &&
        title == other.title &&
        content == other.content &&
        dateSend == other.dateSend &&
        type == other.type &&
        isAllDay == other.isAllDay &&
        status == other.status &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), templateId.hashCode),
                                title.hashCode),
                            content.hashCode),
                        dateSend.hashCode),
                    type.hashCode),
                isAllDay.hashCode),
            status.hashCode),
        createdBy.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Notification')
          ..add('id', id)
          ..add('templateId', templateId)
          ..add('title', title)
          ..add('content', content)
          ..add('dateSend', dateSend)
          ..add('type', type)
          ..add('isAllDay', isAllDay)
          ..add('status', status)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class NotificationBuilder
    implements Builder<Notification, NotificationBuilder> {
  _$Notification? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _templateId;
  int? get templateId => _$this._templateId;
  set templateId(int? templateId) => _$this._templateId = templateId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _dateSend;
  String? get dateSend => _$this._dateSend;
  set dateSend(String? dateSend) => _$this._dateSend = dateSend;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _isAllDay;
  String? get isAllDay => _$this._isAllDay;
  set isAllDay(String? isAllDay) => _$this._isAllDay = isAllDay;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _createdBy;
  int? get createdBy => _$this._createdBy;
  set createdBy(int? createdBy) => _$this._createdBy = createdBy;

  NotificationBuilder() {
    Notification._defaults(this);
  }

  NotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _templateId = $v.templateId;
      _title = $v.title;
      _content = $v.content;
      _dateSend = $v.dateSend;
      _type = $v.type;
      _isAllDay = $v.isAllDay;
      _status = $v.status;
      _createdBy = $v.createdBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Notification;
  }

  @override
  void update(void Function(NotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Notification build() {
    final _$result = _$v ??
        new _$Notification._(
            id: id,
            templateId: templateId,
            title: title,
            content: content,
            dateSend: dateSend,
            type: type,
            isAllDay: isAllDay,
            status: status,
            createdBy: createdBy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
