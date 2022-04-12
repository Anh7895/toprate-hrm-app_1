// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final int? id;
  @override
  final String? uuid;
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
  final Company? company;
  @override
  final Bank? bank;
  @override
  final BuiltList<LaborContract>? laborContract;
  @override
  final int? roleId;
  @override
  final String? roleName;
  @override
  final String? statementAt;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      this.uuid,
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
      this.company,
      this.bank,
      this.laborContract,
      this.roleId,
      this.roleName,
      this.statementAt})
      : super._();

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        uuid == other.uuid &&
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
        company == other.company &&
        bank == other.bank &&
        laborContract == other.laborContract &&
        roleId == other.roleId &&
        roleName == other.roleName &&
        statementAt == other.statementAt;
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
                                                                            $jc($jc($jc($jc(0, id.hashCode), uuid.hashCode), username.hashCode),
                                                                                fullName.hashCode),
                                                                            phone.hashCode),
                                                                        nationalId.hashCode),
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
                            company.hashCode),
                        bank.hashCode),
                    laborContract.hashCode),
                roleId.hashCode),
            roleName.hashCode),
        statementAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('uuid', uuid)
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
          ..add('company', company)
          ..add('bank', bank)
          ..add('laborContract', laborContract)
          ..add('roleId', roleId)
          ..add('roleName', roleName)
          ..add('statementAt', statementAt))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

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

  CompanyBuilder? _company;
  CompanyBuilder get company => _$this._company ??= new CompanyBuilder();
  set company(CompanyBuilder? company) => _$this._company = company;

  BankBuilder? _bank;
  BankBuilder get bank => _$this._bank ??= new BankBuilder();
  set bank(BankBuilder? bank) => _$this._bank = bank;

  ListBuilder<LaborContract>? _laborContract;
  ListBuilder<LaborContract> get laborContract =>
      _$this._laborContract ??= new ListBuilder<LaborContract>();
  set laborContract(ListBuilder<LaborContract>? laborContract) =>
      _$this._laborContract = laborContract;

  int? _roleId;
  int? get roleId => _$this._roleId;
  set roleId(int? roleId) => _$this._roleId = roleId;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _statementAt;
  String? get statementAt => _$this._statementAt;
  set statementAt(String? statementAt) => _$this._statementAt = statementAt;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _uuid = $v.uuid;
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
      _company = $v.company?.toBuilder();
      _bank = $v.bank?.toBuilder();
      _laborContract = $v.laborContract?.toBuilder();
      _roleId = $v.roleId;
      _roleName = $v.roleName;
      _statementAt = $v.statementAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              uuid: uuid,
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
              company: _company?.build(),
              bank: _bank?.build(),
              laborContract: _laborContract?.build(),
              roleId: roleId,
              roleName: roleName,
              statementAt: statementAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'company';
        _company?.build();
        _$failedField = 'bank';
        _bank?.build();
        _$failedField = 'laborContract';
        _laborContract?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
