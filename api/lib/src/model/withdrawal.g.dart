// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Withdrawal extends Withdrawal {
  @override
  final int? id;
  @override
  final int? companyId;
  @override
  final int? userId;
  @override
  final num? amount;
  @override
  final String? status;

  factory _$Withdrawal([void Function(WithdrawalBuilder)? updates]) =>
      (new WithdrawalBuilder()..update(updates)).build();

  _$Withdrawal._(
      {this.id, this.companyId, this.userId, this.amount, this.status})
      : super._();

  @override
  Withdrawal rebuild(void Function(WithdrawalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WithdrawalBuilder toBuilder() => new WithdrawalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Withdrawal &&
        id == other.id &&
        companyId == other.companyId &&
        userId == other.userId &&
        amount == other.amount &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), companyId.hashCode), userId.hashCode),
            amount.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Withdrawal')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('userId', userId)
          ..add('amount', amount)
          ..add('status', status))
        .toString();
  }
}

class WithdrawalBuilder implements Builder<Withdrawal, WithdrawalBuilder> {
  _$Withdrawal? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  WithdrawalBuilder() {
    Withdrawal._defaults(this);
  }

  WithdrawalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _userId = $v.userId;
      _amount = $v.amount;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Withdrawal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Withdrawal;
  }

  @override
  void update(void Function(WithdrawalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Withdrawal build() {
    final _$result = _$v ??
        new _$Withdrawal._(
            id: id,
            companyId: companyId,
            userId: userId,
            amount: amount,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
