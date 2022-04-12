// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_wrong_timekeeping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListWrongTimekeeping extends ListWrongTimekeeping {
  @override
  final int? id;
  @override
  final String? companyName;
  @override
  final String? workerName;
  @override
  final String? workerCode;
  @override
  final String? workerPhone;
  @override
  final double? manHour;
  @override
  final String? correctType;
  @override
  final String? status;
  @override
  final String? wrongDate;
  @override
  final String? sendDate;

  factory _$ListWrongTimekeeping(
          [void Function(ListWrongTimekeepingBuilder)? updates]) =>
      (new ListWrongTimekeepingBuilder()..update(updates)).build();

  _$ListWrongTimekeeping._(
      {this.id,
      this.companyName,
      this.workerName,
      this.workerCode,
      this.workerPhone,
      this.manHour,
      this.correctType,
      this.status,
      this.wrongDate,
      this.sendDate})
      : super._();

  @override
  ListWrongTimekeeping rebuild(
          void Function(ListWrongTimekeepingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListWrongTimekeepingBuilder toBuilder() =>
      new ListWrongTimekeepingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListWrongTimekeeping &&
        id == other.id &&
        companyName == other.companyName &&
        workerName == other.workerName &&
        workerCode == other.workerCode &&
        workerPhone == other.workerPhone &&
        manHour == other.manHour &&
        correctType == other.correctType &&
        status == other.status &&
        wrongDate == other.wrongDate &&
        sendDate == other.sendDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, id.hashCode),
                                        companyName.hashCode),
                                    workerName.hashCode),
                                workerCode.hashCode),
                            workerPhone.hashCode),
                        manHour.hashCode),
                    correctType.hashCode),
                status.hashCode),
            wrongDate.hashCode),
        sendDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListWrongTimekeeping')
          ..add('id', id)
          ..add('companyName', companyName)
          ..add('workerName', workerName)
          ..add('workerCode', workerCode)
          ..add('workerPhone', workerPhone)
          ..add('manHour', manHour)
          ..add('correctType', correctType)
          ..add('status', status)
          ..add('wrongDate', wrongDate)
          ..add('sendDate', sendDate))
        .toString();
  }
}

class ListWrongTimekeepingBuilder
    implements Builder<ListWrongTimekeeping, ListWrongTimekeepingBuilder> {
  _$ListWrongTimekeeping? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _workerName;
  String? get workerName => _$this._workerName;
  set workerName(String? workerName) => _$this._workerName = workerName;

  String? _workerCode;
  String? get workerCode => _$this._workerCode;
  set workerCode(String? workerCode) => _$this._workerCode = workerCode;

  String? _workerPhone;
  String? get workerPhone => _$this._workerPhone;
  set workerPhone(String? workerPhone) => _$this._workerPhone = workerPhone;

  double? _manHour;
  double? get manHour => _$this._manHour;
  set manHour(double? manHour) => _$this._manHour = manHour;

  String? _correctType;
  String? get correctType => _$this._correctType;
  set correctType(String? correctType) => _$this._correctType = correctType;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _wrongDate;
  String? get wrongDate => _$this._wrongDate;
  set wrongDate(String? wrongDate) => _$this._wrongDate = wrongDate;

  String? _sendDate;
  String? get sendDate => _$this._sendDate;
  set sendDate(String? sendDate) => _$this._sendDate = sendDate;

  ListWrongTimekeepingBuilder() {
    ListWrongTimekeeping._defaults(this);
  }

  ListWrongTimekeepingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyName = $v.companyName;
      _workerName = $v.workerName;
      _workerCode = $v.workerCode;
      _workerPhone = $v.workerPhone;
      _manHour = $v.manHour;
      _correctType = $v.correctType;
      _status = $v.status;
      _wrongDate = $v.wrongDate;
      _sendDate = $v.sendDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListWrongTimekeeping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListWrongTimekeeping;
  }

  @override
  void update(void Function(ListWrongTimekeepingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListWrongTimekeeping build() {
    final _$result = _$v ??
        new _$ListWrongTimekeeping._(
            id: id,
            companyName: companyName,
            workerName: workerName,
            workerCode: workerCode,
            workerPhone: workerPhone,
            manHour: manHour,
            correctType: correctType,
            status: status,
            wrongDate: wrongDate,
            sendDate: sendDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
