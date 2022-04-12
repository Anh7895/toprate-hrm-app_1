// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PropertyID extends PropertyID {
  @override
  final BuiltList<JsonObject?>? ids;

  factory _$PropertyID([void Function(PropertyIDBuilder)? updates]) =>
      (new PropertyIDBuilder()..update(updates)).build();

  _$PropertyID._({this.ids}) : super._();

  @override
  PropertyID rebuild(void Function(PropertyIDBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertyIDBuilder toBuilder() => new PropertyIDBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropertyID && ids == other.ids;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ids.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PropertyID')..add('ids', ids))
        .toString();
  }
}

class PropertyIDBuilder implements Builder<PropertyID, PropertyIDBuilder> {
  _$PropertyID? _$v;

  ListBuilder<JsonObject?>? _ids;
  ListBuilder<JsonObject?> get ids =>
      _$this._ids ??= new ListBuilder<JsonObject?>();
  set ids(ListBuilder<JsonObject?>? ids) => _$this._ids = ids;

  PropertyIDBuilder() {
    PropertyID._defaults(this);
  }

  PropertyIDBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropertyID other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PropertyID;
  }

  @override
  void update(void Function(PropertyIDBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PropertyID build() {
    _$PropertyID _$result;
    try {
      _$result = _$v ?? new _$PropertyID._(ids: _ids?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        _ids?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PropertyID', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
