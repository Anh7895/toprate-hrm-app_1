// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Permission extends Permission {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? guardName;
  @override
  final String? label;

  factory _$Permission([void Function(PermissionBuilder)? updates]) =>
      (new PermissionBuilder()..update(updates)).build();

  _$Permission._({this.id, this.name, this.guardName, this.label}) : super._();

  @override
  Permission rebuild(void Function(PermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionBuilder toBuilder() => new PermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Permission &&
        id == other.id &&
        name == other.name &&
        guardName == other.guardName &&
        label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), guardName.hashCode),
        label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Permission')
          ..add('id', id)
          ..add('name', name)
          ..add('guardName', guardName)
          ..add('label', label))
        .toString();
  }
}

class PermissionBuilder implements Builder<Permission, PermissionBuilder> {
  _$Permission? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _guardName;
  String? get guardName => _$this._guardName;
  set guardName(String? guardName) => _$this._guardName = guardName;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  PermissionBuilder() {
    Permission._defaults(this);
  }

  PermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _guardName = $v.guardName;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Permission other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Permission;
  }

  @override
  void update(void Function(PermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Permission build() {
    final _$result = _$v ??
        new _$Permission._(
            id: id, name: name, guardName: guardName, label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
