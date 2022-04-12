// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_timekeeping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalendarTimekeeping extends CalendarTimekeeping {
  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? fullName;
  @override
  final String? phone;
  @override
  final String? nationalId;
  @override
  final String? birthday;
  @override
  final String? sex;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? dateOfIssue;
  @override
  final String? placeOfIssue;
  @override
  final String? accountBalance;
  @override
  final int? isLock;
  @override
  final int? bankId;
  @override
  final String? code;
  @override
  final String? totalWorkingDay;
  @override
  final String? dayOnLeave;
  @override
  final CalendarTimekeepingTimekeeping? timekeeping;

  factory _$CalendarTimekeeping(
          [void Function(CalendarTimekeepingBuilder)? updates]) =>
      (new CalendarTimekeepingBuilder()..update(updates)).build();

  _$CalendarTimekeeping._(
      {this.id,
      this.username,
      this.fullName,
      this.phone,
      this.nationalId,
      this.birthday,
      this.sex,
      this.email,
      this.address,
      this.dateOfIssue,
      this.placeOfIssue,
      this.accountBalance,
      this.isLock,
      this.bankId,
      this.code,
      this.totalWorkingDay,
      this.dayOnLeave,
      this.timekeeping})
      : super._();

  @override
  CalendarTimekeeping rebuild(
          void Function(CalendarTimekeepingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarTimekeepingBuilder toBuilder() =>
      new CalendarTimekeepingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarTimekeeping &&
        id == other.id &&
        username == other.username &&
        fullName == other.fullName &&
        phone == other.phone &&
        nationalId == other.nationalId &&
        birthday == other.birthday &&
        sex == other.sex &&
        email == other.email &&
        address == other.address &&
        dateOfIssue == other.dateOfIssue &&
        placeOfIssue == other.placeOfIssue &&
        accountBalance == other.accountBalance &&
        isLock == other.isLock &&
        bankId == other.bankId &&
        code == other.code &&
        totalWorkingDay == other.totalWorkingDay &&
        dayOnLeave == other.dayOnLeave &&
        timekeeping == other.timekeeping;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            id
                                                                                .hashCode),
                                                                        username
                                                                            .hashCode),
                                                                    fullName
                                                                        .hashCode),
                                                                phone.hashCode),
                                                            nationalId
                                                                .hashCode),
                                                        birthday.hashCode),
                                                    sex.hashCode),
                                                email.hashCode),
                                            address.hashCode),
                                        dateOfIssue.hashCode),
                                    placeOfIssue.hashCode),
                                accountBalance.hashCode),
                            isLock.hashCode),
                        bankId.hashCode),
                    code.hashCode),
                totalWorkingDay.hashCode),
            dayOnLeave.hashCode),
        timekeeping.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CalendarTimekeeping')
          ..add('id', id)
          ..add('username', username)
          ..add('fullName', fullName)
          ..add('phone', phone)
          ..add('nationalId', nationalId)
          ..add('birthday', birthday)
          ..add('sex', sex)
          ..add('email', email)
          ..add('address', address)
          ..add('dateOfIssue', dateOfIssue)
          ..add('placeOfIssue', placeOfIssue)
          ..add('accountBalance', accountBalance)
          ..add('isLock', isLock)
          ..add('bankId', bankId)
          ..add('code', code)
          ..add('totalWorkingDay', totalWorkingDay)
          ..add('dayOnLeave', dayOnLeave)
          ..add('timekeeping', timekeeping))
        .toString();
  }
}

class CalendarTimekeepingBuilder
    implements Builder<CalendarTimekeeping, CalendarTimekeepingBuilder> {
  _$CalendarTimekeeping? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _nationalId;
  String? get nationalId => _$this._nationalId;
  set nationalId(String? nationalId) => _$this._nationalId = nationalId;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _dateOfIssue;
  String? get dateOfIssue => _$this._dateOfIssue;
  set dateOfIssue(String? dateOfIssue) => _$this._dateOfIssue = dateOfIssue;

  String? _placeOfIssue;
  String? get placeOfIssue => _$this._placeOfIssue;
  set placeOfIssue(String? placeOfIssue) => _$this._placeOfIssue = placeOfIssue;

  String? _accountBalance;
  String? get accountBalance => _$this._accountBalance;
  set accountBalance(String? accountBalance) =>
      _$this._accountBalance = accountBalance;

  int? _isLock;
  int? get isLock => _$this._isLock;
  set isLock(int? isLock) => _$this._isLock = isLock;

  int? _bankId;
  int? get bankId => _$this._bankId;
  set bankId(int? bankId) => _$this._bankId = bankId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _totalWorkingDay;
  String? get totalWorkingDay => _$this._totalWorkingDay;
  set totalWorkingDay(String? totalWorkingDay) =>
      _$this._totalWorkingDay = totalWorkingDay;

  String? _dayOnLeave;
  String? get dayOnLeave => _$this._dayOnLeave;
  set dayOnLeave(String? dayOnLeave) => _$this._dayOnLeave = dayOnLeave;

  CalendarTimekeepingTimekeepingBuilder? _timekeeping;
  CalendarTimekeepingTimekeepingBuilder get timekeeping =>
      _$this._timekeeping ??= new CalendarTimekeepingTimekeepingBuilder();
  set timekeeping(CalendarTimekeepingTimekeepingBuilder? timekeeping) =>
      _$this._timekeeping = timekeeping;

  CalendarTimekeepingBuilder() {
    CalendarTimekeeping._defaults(this);
  }

  CalendarTimekeepingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _fullName = $v.fullName;
      _phone = $v.phone;
      _nationalId = $v.nationalId;
      _birthday = $v.birthday;
      _sex = $v.sex;
      _email = $v.email;
      _address = $v.address;
      _dateOfIssue = $v.dateOfIssue;
      _placeOfIssue = $v.placeOfIssue;
      _accountBalance = $v.accountBalance;
      _isLock = $v.isLock;
      _bankId = $v.bankId;
      _code = $v.code;
      _totalWorkingDay = $v.totalWorkingDay;
      _dayOnLeave = $v.dayOnLeave;
      _timekeeping = $v.timekeeping?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarTimekeeping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CalendarTimekeeping;
  }

  @override
  void update(void Function(CalendarTimekeepingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CalendarTimekeeping build() {
    _$CalendarTimekeeping _$result;
    try {
      _$result = _$v ??
          new _$CalendarTimekeeping._(
              id: id,
              username: username,
              fullName: fullName,
              phone: phone,
              nationalId: nationalId,
              birthday: birthday,
              sex: sex,
              email: email,
              address: address,
              dateOfIssue: dateOfIssue,
              placeOfIssue: placeOfIssue,
              accountBalance: accountBalance,
              isLock: isLock,
              bankId: bankId,
              code: code,
              totalWorkingDay: totalWorkingDay,
              dayOnLeave: dayOnLeave,
              timekeeping: _timekeeping?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timekeeping';
        _timekeeping?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CalendarTimekeeping', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
