// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Staff extends Staff {
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
  final int? companyId;
  @override
  final int? roleId;

  factory _$Staff([void Function(StaffBuilder)? updates]) =>
      (new StaffBuilder()..update(updates)).build();

  _$Staff._(
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
      this.companyId,
      this.roleId})
      : super._();

  @override
  Staff rebuild(void Function(StaffBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StaffBuilder toBuilder() => new StaffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Staff &&
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
        companyId == other.companyId &&
        roleId == other.roleId;
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
                                            $jc($jc(0, code.hashCode),
                                                fullName.hashCode),
                                            phone.hashCode),
                                        nationalId.hashCode),
                                    birthday.hashCode),
                                sex.hashCode),
                            email.hashCode),
                        address.hashCode),
                    dateOfIssue.hashCode),
                placeOfIssue.hashCode),
            companyId.hashCode),
        roleId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Staff')
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
          ..add('companyId', companyId)
          ..add('roleId', roleId))
        .toString();
  }
}

class StaffBuilder implements Builder<Staff, StaffBuilder> {
  _$Staff? _$v;

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

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _roleId;
  int? get roleId => _$this._roleId;
  set roleId(int? roleId) => _$this._roleId = roleId;

  StaffBuilder() {
    Staff._defaults(this);
  }

  StaffBuilder get _$this {
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
      _companyId = $v.companyId;
      _roleId = $v.roleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Staff other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Staff;
  }

  @override
  void update(void Function(StaffBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Staff build() {
    final _$result = _$v ??
        new _$Staff._(
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
            companyId: companyId,
            roleId: roleId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
