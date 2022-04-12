// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'c_company.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CCompany extends CCompany {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String? image;
  @override
  final String? description;

  factory _$CCompany([void Function(CCompanyBuilder)? updates]) =>
      (new CCompanyBuilder()..update(updates)).build();

  _$CCompany._(
      {this.id,
      this.name,
      this.phone,
      this.address,
      this.image,
      this.description})
      : super._();

  @override
  CCompany rebuild(void Function(CCompanyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CCompanyBuilder toBuilder() => new CCompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CCompany &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        address == other.address &&
        image == other.image &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), phone.hashCode),
                address.hashCode),
            image.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CCompany')
          ..add('id', id)
          ..add('name', name)
          ..add('phone', phone)
          ..add('address', address)
          ..add('image', image)
          ..add('description', description))
        .toString();
  }
}

class CCompanyBuilder implements Builder<CCompany, CCompanyBuilder> {
  _$CCompany? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CCompanyBuilder() {
    CCompany._defaults(this);
  }

  CCompanyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _phone = $v.phone;
      _address = $v.address;
      _image = $v.image;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CCompany other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CCompany;
  }

  @override
  void update(void Function(CCompanyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CCompany build() {
    final _$result = _$v ??
        new _$CCompany._(
            id: id,
            name: name,
            phone: phone,
            address: address,
            image: image,
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
