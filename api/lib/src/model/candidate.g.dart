// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Candidate extends Candidate {
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

  factory _$Candidate([void Function(CandidateBuilder)? updates]) =>
      (new CandidateBuilder()..update(updates)).build();

  _$Candidate._(
      {this.id,
      this.fullName,
      this.phone,
      this.birthday,
      this.address,
      this.nationalId,
      this.email,
      this.recruitmentsId,
      this.status})
      : super._();

  @override
  Candidate rebuild(void Function(CandidateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CandidateBuilder toBuilder() => new CandidateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Candidate &&
        id == other.id &&
        fullName == other.fullName &&
        phone == other.phone &&
        birthday == other.birthday &&
        address == other.address &&
        nationalId == other.nationalId &&
        email == other.email &&
        recruitmentsId == other.recruitmentsId &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), fullName.hashCode),
                                phone.hashCode),
                            birthday.hashCode),
                        address.hashCode),
                    nationalId.hashCode),
                email.hashCode),
            recruitmentsId.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Candidate')
          ..add('id', id)
          ..add('fullName', fullName)
          ..add('phone', phone)
          ..add('birthday', birthday)
          ..add('address', address)
          ..add('nationalId', nationalId)
          ..add('email', email)
          ..add('recruitmentsId', recruitmentsId)
          ..add('status', status))
        .toString();
  }
}

class CandidateBuilder implements Builder<Candidate, CandidateBuilder> {
  _$Candidate? _$v;

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

  CandidateBuilder() {
    Candidate._defaults(this);
  }

  CandidateBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Candidate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Candidate;
  }

  @override
  void update(void Function(CandidateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Candidate build() {
    final _$result = _$v ??
        new _$Candidate._(
            id: id,
            fullName: fullName,
            phone: phone,
            birthday: birthday,
            address: address,
            nationalId: nationalId,
            email: email,
            recruitmentsId: recruitmentsId,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
