// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Notification extends Notification {
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
  @override
  final int? createdBy;
  @override
  final CCompany? company;

  factory _$Notification([void Function(NotificationBuilder)? updates]) =>
      (new NotificationBuilder()..update(updates)).build();

  _$Notification._(
      {this.id,
      this.dateSend,
      this.title,
      this.content,
      this.companyId,
      this.sendSms,
      this.sendMobile,
      this.createdBy,
      this.company})
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
        dateSend == other.dateSend &&
        title == other.title &&
        content == other.content &&
        companyId == other.companyId &&
        sendSms == other.sendSms &&
        sendMobile == other.sendMobile &&
        createdBy == other.createdBy &&
        company == other.company;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), dateSend.hashCode),
                                title.hashCode),
                            content.hashCode),
                        companyId.hashCode),
                    sendSms.hashCode),
                sendMobile.hashCode),
            createdBy.hashCode),
        company.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Notification')
          ..add('id', id)
          ..add('dateSend', dateSend)
          ..add('title', title)
          ..add('content', content)
          ..add('companyId', companyId)
          ..add('sendSms', sendSms)
          ..add('sendMobile', sendMobile)
          ..add('createdBy', createdBy)
          ..add('company', company))
        .toString();
  }
}

class NotificationBuilder
    implements Builder<Notification, NotificationBuilder> {
  _$Notification? _$v;

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

  int? _createdBy;
  int? get createdBy => _$this._createdBy;
  set createdBy(int? createdBy) => _$this._createdBy = createdBy;

  CCompanyBuilder? _company;
  CCompanyBuilder get company => _$this._company ??= new CCompanyBuilder();
  set company(CCompanyBuilder? company) => _$this._company = company;

  NotificationBuilder() {
    Notification._defaults(this);
  }

  NotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _dateSend = $v.dateSend;
      _title = $v.title;
      _content = $v.content;
      _companyId = $v.companyId;
      _sendSms = $v.sendSms;
      _sendMobile = $v.sendMobile;
      _createdBy = $v.createdBy;
      _company = $v.company?.toBuilder();
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
    _$Notification _$result;
    try {
      _$result = _$v ??
          new _$Notification._(
              id: id,
              dateSend: dateSend,
              title: title,
              content: content,
              companyId: companyId,
              sendSms: sendSms,
              sendMobile: sendMobile,
              createdBy: createdBy,
              company: _company?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'company';
        _company?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Notification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
