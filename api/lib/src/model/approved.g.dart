// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approved.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Approved extends Approved {
  @override
  final int id;
  @override
  final String status;

  factory _$Approved([void Function(ApprovedBuilder)? updates]) =>
      (new ApprovedBuilder()..update(updates)).build();

  _$Approved._({required this.id, required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Approved', 'id');
    BuiltValueNullFieldError.checkNotNull(status, 'Approved', 'status');
  }

  @override
  Approved rebuild(void Function(ApprovedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApprovedBuilder toBuilder() => new ApprovedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Approved && id == other.id && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Approved')
          ..add('id', id)
          ..add('status', status))
        .toString();
  }
}

class ApprovedBuilder implements Builder<Approved, ApprovedBuilder> {
  _$Approved? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ApprovedBuilder() {
    Approved._defaults(this);
  }

  ApprovedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Approved other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Approved;
  }

  @override
  void update(void Function(ApprovedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Approved build() {
    final _$result = _$v ??
        new _$Approved._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Approved', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'Approved', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
