// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ci_candidate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CICandidate extends CICandidate {
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
  final int? recruitmentsId;

  factory _$CICandidate([void Function(CICandidateBuilder)? updates]) =>
      (new CICandidateBuilder()..update(updates)).build();

  _$CICandidate._(
      {this.fullName,
      this.phone,
      this.birthday,
      this.address,
      this.nationalId,
      this.recruitmentsId})
      : super._();

  @override
  CICandidate rebuild(void Function(CICandidateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CICandidateBuilder toBuilder() => new CICandidateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CICandidate &&
        fullName == other.fullName &&
        phone == other.phone &&
        birthday == other.birthday &&
        address == other.address &&
        nationalId == other.nationalId &&
        recruitmentsId == other.recruitmentsId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, fullName.hashCode), phone.hashCode),
                    birthday.hashCode),
                address.hashCode),
            nationalId.hashCode),
        recruitmentsId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CICandidate')
          ..add('fullName', fullName)
          ..add('phone', phone)
          ..add('birthday', birthday)
          ..add('address', address)
          ..add('nationalId', nationalId)
          ..add('recruitmentsId', recruitmentsId))
        .toString();
  }
}

class CICandidateBuilder implements Builder<CICandidate, CICandidateBuilder> {
  _$CICandidate? _$v;

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

  int? _recruitmentsId;
  int? get recruitmentsId => _$this._recruitmentsId;
  set recruitmentsId(int? recruitmentsId) =>
      _$this._recruitmentsId = recruitmentsId;

  CICandidateBuilder() {
    CICandidate._defaults(this);
  }

  CICandidateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullName = $v.fullName;
      _phone = $v.phone;
      _birthday = $v.birthday;
      _address = $v.address;
      _nationalId = $v.nationalId;
      _recruitmentsId = $v.recruitmentsId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CICandidate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CICandidate;
  }

  @override
  void update(void Function(CICandidateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CICandidate build() {
    final _$result = _$v ??
        new _$CICandidate._(
            fullName: fullName,
            phone: phone,
            birthday: birthday,
            address: address,
            nationalId: nationalId,
            recruitmentsId: recruitmentsId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
