// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Cancel extends Cancel {
  @override
  final String reason;

  factory _$Cancel([void Function(CancelBuilder)? updates]) =>
      (new CancelBuilder()..update(updates)).build();

  _$Cancel._({required this.reason}) : super._() {
    BuiltValueNullFieldError.checkNotNull(reason, 'Cancel', 'reason');
  }

  @override
  Cancel rebuild(void Function(CancelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelBuilder toBuilder() => new CancelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cancel && reason == other.reason;
  }

  @override
  int get hashCode {
    return $jf($jc(0, reason.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cancel')..add('reason', reason))
        .toString();
  }
}

class CancelBuilder implements Builder<Cancel, CancelBuilder> {
  _$Cancel? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  CancelBuilder() {
    Cancel._defaults(this);
  }

  CancelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cancel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Cancel;
  }

  @override
  void update(void Function(CancelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Cancel build() {
    final _$result = _$v ??
        new _$Cancel._(
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, 'Cancel', 'reason'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
