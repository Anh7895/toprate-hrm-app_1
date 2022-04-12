// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Company extends Company {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final int? industrialAreaId;
  @override
  final String? address;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final IndustrialArea? industrialAreas;

  factory _$Company([void Function(CompanyBuilder)? updates]) =>
      (new CompanyBuilder()..update(updates)).build();

  _$Company._(
      {this.id,
      this.name,
      this.phone,
      this.industrialAreaId,
      this.address,
      this.image,
      this.description,
      this.industrialAreas})
      : super._();

  @override
  Company rebuild(void Function(CompanyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyBuilder toBuilder() => new CompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Company &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        industrialAreaId == other.industrialAreaId &&
        address == other.address &&
        image == other.image &&
        description == other.description &&
        industrialAreas == other.industrialAreas;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            phone.hashCode),
                        industrialAreaId.hashCode),
                    address.hashCode),
                image.hashCode),
            description.hashCode),
        industrialAreas.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Company')
          ..add('id', id)
          ..add('name', name)
          ..add('phone', phone)
          ..add('industrialAreaId', industrialAreaId)
          ..add('address', address)
          ..add('image', image)
          ..add('description', description)
          ..add('industrialAreas', industrialAreas))
        .toString();
  }
}

class CompanyBuilder implements Builder<Company, CompanyBuilder> {
  _$Company? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  int? _industrialAreaId;
  int? get industrialAreaId => _$this._industrialAreaId;
  set industrialAreaId(int? industrialAreaId) =>
      _$this._industrialAreaId = industrialAreaId;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  IndustrialAreaBuilder? _industrialAreas;
  IndustrialAreaBuilder get industrialAreas =>
      _$this._industrialAreas ??= new IndustrialAreaBuilder();
  set industrialAreas(IndustrialAreaBuilder? industrialAreas) =>
      _$this._industrialAreas = industrialAreas;

  CompanyBuilder() {
    Company._defaults(this);
  }

  CompanyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _phone = $v.phone;
      _industrialAreaId = $v.industrialAreaId;
      _address = $v.address;
      _image = $v.image;
      _description = $v.description;
      _industrialAreas = $v.industrialAreas?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Company other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Company;
  }

  @override
  void update(void Function(CompanyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Company build() {
    _$Company _$result;
    try {
      _$result = _$v ??
          new _$Company._(
              id: id,
              name: name,
              phone: phone,
              industrialAreaId: industrialAreaId,
              address: address,
              image: image,
              description: description,
              industrialAreas: _industrialAreas?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'industrialAreas';
        _industrialAreas?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Company', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
