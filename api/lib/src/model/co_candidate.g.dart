// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'co_candidate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$COCandidate extends COCandidate {
  @override
  final int? id;
  @override
  final String? fullName;
  @override
  final String? phone;
  @override
  final String? birthday;
  @override
  final String? address;
  @override
  final String? nationalId;
  @override
  final String? email;
  @override
  final int? recruitmentsId;
  @override
  final String? status;
  @override
  final String? position;
  @override
  final String? companyName;

  factory _$COCandidate([void Function(COCandidateBuilder)? updates]) =>
      (new COCandidateBuilder()..update(updates)).build();

  _$COCandidate._(
      {this.id,
      this.fullName,
      this.phone,
      this.birthday,
      this.address,
      this.nationalId,
      this.email,
      this.recruitmentsId,
      this.status,
      this.position,
      this.companyName})
      : super._();

  @override
  COCandidate rebuild(void Function(COCandidateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  COCandidateBuilder toBuilder() => new COCandidateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is COCandidate &&
        id == other.id &&
        fullName == other.fullName &&
        phone == other.phone &&
        birthday == other.birthday &&
        address == other.address &&
        nationalId == other.nationalId &&
        email == other.email &&
        recruitmentsId == other.recruitmentsId &&
        status == other.status &&
        position == other.position &&
        companyName == other.companyName;
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
                                        $jc($jc(0, id.hashCode),
                                            fullName.hashCode),
                                        phone.hashCode),
                                    birthday.hashCode),
                                address.hashCode),
                            nationalId.hashCode),
                        email.hashCode),
                    recruitmentsId.hashCode),
                status.hashCode),
            position.hashCode),
        companyName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('COCandidate')
          ..add('id', id)
          ..add('fullName', fullName)
          ..add('phone', phone)
          ..add('birthday', birthday)
          ..add('address', address)
          ..add('nationalId', nationalId)
          ..add('email', email)
          ..add('recruitmentsId', recruitmentsId)
          ..add('status', status)
          ..add('position', position)
          ..add('companyName', companyName))
        .toString();
  }
}

class COCandidateBuilder implements Builder<COCandidate, COCandidateBuilder> {
  _$COCandidate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _nationalId;
  String? get nationalId => _$this._nationalId;
  set nationalId(String? nationalId) => _$this._nationalId = nationalId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _recruitmentsId;
  int? get recruitmentsId => _$this._recruitmentsId;
  set recruitmentsId(int? recruitmentsId) =>
      _$this._recruitmentsId = recruitmentsId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  COCandidateBuilder() {
    COCandidate._defaults(this);
  }

  COCandidateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fullName = $v.fullName;
      _phone = $v.phone;
      _birthday = $v.birthday;
      _address = $v.address;
      _nationalId = $v.nationalId;
      _email = $v.email;
      _recruitmentsId = $v.recruitmentsId;
      _status = $v.status;
      _position = $v.position;
      _companyName = $v.companyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(COCandidate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$COCandidate;
  }

  @override
  void update(void Function(COCandidateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$COCandidate build() {
    final _$result = _$v ??
        new _$COCandidate._(
            id: id,
            fullName: fullName,
            phone: phone,
            birthday: birthday,
            address: address,
            nationalId: nationalId,
            email: email,
            recruitmentsId: recruitmentsId,
            status: status,
            position: position,
            companyName: companyName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
