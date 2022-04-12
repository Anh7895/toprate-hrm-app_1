// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'c_notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CNotification extends CNotification {
  @override
  final int? id;
  @override
  final String? dateSend;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final int? companyId;
  @override
  final bool? sendSms;
  @override
  final bool? sendMobile;

  factory _$CNotification([void Function(CNotificationBuilder)? updates]) =>
      (new CNotificationBuilder()..update(updates)).build();

  _$CNotification._(
      {this.id,
      this.dateSend,
      this.title,
      this.content,
      this.companyId,
      this.sendSms,
      this.sendMobile})
      : super._();

  @override
  CNotification rebuild(void Function(CNotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CNotificationBuilder toBuilder() => new CNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CNotification &&
        id == other.id &&
        dateSend == other.dateSend &&
        title == other.title &&
        content == other.content &&
        companyId == other.companyId &&
        sendSms == other.sendSms &&
        sendMobile == other.sendMobile;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), dateSend.hashCode),
                        title.hashCode),
                    content.hashCode),
                companyId.hashCode),
            sendSms.hashCode),
        sendMobile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CNotification')
          ..add('id', id)
          ..add('dateSend', dateSend)
          ..add('title', title)
          ..add('content', content)
          ..add('companyId', companyId)
          ..add('sendSms', sendSms)
          ..add('sendMobile', sendMobile))
        .toString();
  }
}

class CNotificationBuilder
    implements Builder<CNotification, CNotificationBuilder> {
  _$CNotification? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _dateSend;
  String? get dateSend => _$this._dateSend;
  set dateSend(String? dateSend) => _$this._dateSend = dateSend;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  bool? _sendSms;
  bool? get sendSms => _$this._sendSms;
  set sendSms(bool? sendSms) => _$this._sendSms = sendSms;

  bool? _sendMobile;
  bool? get sendMobile => _$this._sendMobile;
  set sendMobile(bool? sendMobile) => _$this._sendMobile = sendMobile;

  CNotificationBuilder() {
    CNotification._defaults(this);
  }

  CNotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _dateSend = $v.dateSend;
      _title = $v.title;
      _content = $v.content;
      _companyId = $v.companyId;
      _sendSms = $v.sendSms;
      _sendMobile = $v.sendMobile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CNotification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CNotification;
  }

  @override
  void update(void Function(CNotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CNotification build() {
    final _$result = _$v ??
        new _$CNotification._(
            id: id,
            dateSend: dateSend,
            title: title,
            content: content,
            companyId: companyId,
            sendSms: sendSms,
            sendMobile: sendMobile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
