// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Worker extends Worker {
  @override
  final String? code;
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
  final String? number;
  @override
  final String? link;
  @override
  final int? companyId;
  @override
  final String? bankName;
  @override
  final String? bankAccount;
  @override
  final String? otp;

  factory _$Worker([void Function(WorkerBuilder)? updates]) =>
      (new WorkerBuilder()..update(updates)).build();

  _$Worker._(
      {this.code,
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
      this.number,
      this.link,
      this.companyId,
      this.bankName,
      this.bankAccount,
      this.otp})
      : super._();

  @override
  Worker rebuild(void Function(WorkerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkerBuilder toBuilder() => new WorkerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Worker &&
        code == other.code &&
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
        number == other.number &&
        link == other.link &&
        companyId == other.companyId &&
        bankName == other.bankName &&
        bankAccount == other.bankAccount &&
        otp == other.otp;
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
                                                                        0,
                                                                        code
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
                            number.hashCode),
                        link.hashCode),
                    companyId.hashCode),
                bankName.hashCode),
            bankAccount.hashCode),
        otp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Worker')
          ..add('code', code)
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
          ..add('number', number)
          ..add('link', link)
          ..add('companyId', companyId)
          ..add('bankName', bankName)
          ..add('bankAccount', bankAccount)
          ..add('otp', otp))
        .toString();
  }
}

class WorkerBuilder implements Builder<Worker, WorkerBuilder> {
  _$Worker? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

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

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _bankAccount;
  String? get bankAccount => _$this._bankAccount;
  set bankAccount(String? bankAccount) => _$this._bankAccount = bankAccount;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  WorkerBuilder() {
    Worker._defaults(this);
  }

  WorkerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
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
      _number = $v.number;
      _link = $v.link;
      _companyId = $v.companyId;
      _bankName = $v.bankName;
      _bankAccount = $v.bankAccount;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Worker other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Worker;
  }

  @override
  void update(void Function(WorkerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Worker build() {
    final _$result = _$v ??
        new _$Worker._(
            code: code,
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
            number: number,
            link: link,
            companyId: companyId,
            bankName: bankName,
            bankAccount: bankAccount,
            otp: otp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
