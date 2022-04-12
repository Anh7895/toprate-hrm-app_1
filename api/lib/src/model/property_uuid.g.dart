// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_uuid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PropertyUuid extends PropertyUuid {
  @override
  final BuiltList<JsonObject?> uuids;

  factory _$PropertyUuid([void Function(PropertyUuidBuilder)? updates]) =>
      (new PropertyUuidBuilder()..update(updates)).build();

  _$PropertyUuid._({required this.uuids}) : super._() {
    BuiltValueNullFieldError.checkNotNull(uuids, 'PropertyUuid', 'uuids');
  }

  @override
  PropertyUuid rebuild(void Function(PropertyUuidBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertyUuidBuilder toBuilder() => new PropertyUuidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropertyUuid && uuids == other.uuids;
  }

  @override
  int get hashCode {
    return $jf($jc(0, uuids.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PropertyUuid')..add('uuids', uuids))
        .toString();
  }
}

class PropertyUuidBuilder
    implements Builder<PropertyUuid, PropertyUuidBuilder> {
  _$PropertyUuid? _$v;

  ListBuilder<JsonObject?>? _uuids;
  ListBuilder<JsonObject?> get uuids =>
      _$this._uuids ??= new ListBuilder<JsonObject?>();
  set uuids(ListBuilder<JsonObject?>? uuids) => _$this._uuids = uuids;

  PropertyUuidBuilder() {
    PropertyUuid._defaults(this);
  }

  PropertyUuidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uuids = $v.uuids.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropertyUuid other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PropertyUuid;
  }

  @override
  void update(void Function(PropertyUuidBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PropertyUuid build() {
    _$PropertyUuid _$result;
    try {
      _$result = _$v ?? new _$PropertyUuid._(uuids: uuids.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uuids';
        uuids.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PropertyUuid', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
