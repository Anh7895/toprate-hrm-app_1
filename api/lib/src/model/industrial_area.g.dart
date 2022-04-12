// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'industrial_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndustrialArea extends IndustrialArea {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? createdBy;
  @override
  final String? deletedAt;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? address;

  factory _$IndustrialArea([void Function(IndustrialAreaBuilder)? updates]) =>
      (new IndustrialAreaBuilder()..update(updates)).build();

  _$IndustrialArea._(
      {this.id,
      this.name,
      this.createdBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.address})
      : super._();

  @override
  IndustrialArea rebuild(void Function(IndustrialAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndustrialAreaBuilder toBuilder() =>
      new IndustrialAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndustrialArea &&
        id == other.id &&
        name == other.name &&
        createdBy == other.createdBy &&
        deletedAt == other.deletedAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        address == other.address;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        createdBy.hashCode),
                    deletedAt.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        address.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IndustrialArea')
          ..add('id', id)
          ..add('name', name)
          ..add('createdBy', createdBy)
          ..add('deletedAt', deletedAt)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('address', address))
        .toString();
  }
}

class IndustrialAreaBuilder
    implements Builder<IndustrialArea, IndustrialAreaBuilder> {
  _$IndustrialArea? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _createdBy;
  int? get createdBy => _$this._createdBy;
  set createdBy(int? createdBy) => _$this._createdBy = createdBy;

  String? _deletedAt;
  String? get deletedAt => _$this._deletedAt;
  set deletedAt(String? deletedAt) => _$this._deletedAt = deletedAt;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  IndustrialAreaBuilder() {
    IndustrialArea._defaults(this);
  }

  IndustrialAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _createdBy = $v.createdBy;
      _deletedAt = $v.deletedAt;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndustrialArea other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IndustrialArea;
  }

  @override
  void update(void Function(IndustrialAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IndustrialArea build() {
    final _$result = _$v ??
        new _$IndustrialArea._(
            id: id,
            name: name,
            createdBy: createdBy,
            deletedAt: deletedAt,
            createdAt: createdAt,
            updatedAt: updatedAt,
            address: address);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
