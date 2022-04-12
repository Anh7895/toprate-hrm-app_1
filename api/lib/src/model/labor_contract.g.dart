// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labor_contract.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaborContract extends LaborContract {
  @override
  final int? id;
  @override
  final String? number;
  @override
  final String? link;
  @override
  final String? status;
  @override
  final String? reason;
  @override
  final int? userId;
  @override
  final int? companyId;
  @override
  final String? cancelAt;

  factory _$LaborContract([void Function(LaborContractBuilder)? updates]) =>
      (new LaborContractBuilder()..update(updates)).build();

  _$LaborContract._(
      {this.id,
      this.number,
      this.link,
      this.status,
      this.reason,
      this.userId,
      this.companyId,
      this.cancelAt})
      : super._();

  @override
  LaborContract rebuild(void Function(LaborContractBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaborContractBuilder toBuilder() => new LaborContractBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaborContract &&
        id == other.id &&
        number == other.number &&
        link == other.link &&
        status == other.status &&
        reason == other.reason &&
        userId == other.userId &&
        companyId == other.companyId &&
        cancelAt == other.cancelAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), number.hashCode),
                            link.hashCode),
                        status.hashCode),
                    reason.hashCode),
                userId.hashCode),
            companyId.hashCode),
        cancelAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LaborContract')
          ..add('id', id)
          ..add('number', number)
          ..add('link', link)
          ..add('status', status)
          ..add('reason', reason)
          ..add('userId', userId)
          ..add('companyId', companyId)
          ..add('cancelAt', cancelAt))
        .toString();
  }
}

class LaborContractBuilder
    implements Builder<LaborContract, LaborContractBuilder> {
  _$LaborContract? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  String? _cancelAt;
  String? get cancelAt => _$this._cancelAt;
  set cancelAt(String? cancelAt) => _$this._cancelAt = cancelAt;

  LaborContractBuilder() {
    LaborContract._defaults(this);
  }

  LaborContractBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _number = $v.number;
      _link = $v.link;
      _status = $v.status;
      _reason = $v.reason;
      _userId = $v.userId;
      _companyId = $v.companyId;
      _cancelAt = $v.cancelAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaborContract other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaborContract;
  }

  @override
  void update(void Function(LaborContractBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LaborContract build() {
    final _$result = _$v ??
        new _$LaborContract._(
            id: id,
            number: number,
            link: link,
            status: status,
            reason: reason,
            userId: userId,
            companyId: companyId,
            cancelAt: cancelAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
