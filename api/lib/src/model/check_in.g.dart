// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckIn extends CheckIn {
  @override
  final BuiltList<CheckInData> data;

  factory _$CheckIn([void Function(CheckInBuilder)? updates]) =>
      (new CheckInBuilder()..update(updates)).build();

  _$CheckIn._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, 'CheckIn', 'data');
  }

  @override
  CheckIn rebuild(void Function(CheckInBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckInBuilder toBuilder() => new CheckInBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckIn && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckIn')..add('data', data))
        .toString();
  }
}

class CheckInBuilder implements Builder<CheckIn, CheckInBuilder> {
  _$CheckIn? _$v;

  ListBuilder<CheckInData>? _data;
  ListBuilder<CheckInData> get data =>
      _$this._data ??= new ListBuilder<CheckInData>();
  set data(ListBuilder<CheckInData>? data) => _$this._data = data;

  CheckInBuilder() {
    CheckIn._defaults(this);
  }

  CheckInBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckIn other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckIn;
  }

  @override
  void update(void Function(CheckInBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckIn build() {
    _$CheckIn _$result;
    try {
      _$result = _$v ?? new _$CheckIn._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckIn', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
