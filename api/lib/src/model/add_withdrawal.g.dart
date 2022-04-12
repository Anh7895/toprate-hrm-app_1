// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_withdrawal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddWithdrawal extends AddWithdrawal {
  @override
  final String username;
  @override
  final double amount;

  factory _$AddWithdrawal([void Function(AddWithdrawalBuilder)? updates]) =>
      (new AddWithdrawalBuilder()..update(updates)).build();

  _$AddWithdrawal._({required this.username, required this.amount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'AddWithdrawal', 'username');
    BuiltValueNullFieldError.checkNotNull(amount, 'AddWithdrawal', 'amount');
  }

  @override
  AddWithdrawal rebuild(void Function(AddWithdrawalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddWithdrawalBuilder toBuilder() => new AddWithdrawalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddWithdrawal &&
        username == other.username &&
        amount == other.amount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), amount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddWithdrawal')
          ..add('username', username)
          ..add('amount', amount))
        .toString();
  }
}

class AddWithdrawalBuilder
    implements Builder<AddWithdrawal, AddWithdrawalBuilder> {
  _$AddWithdrawal? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  AddWithdrawalBuilder() {
    AddWithdrawal._defaults(this);
  }

  AddWithdrawalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _amount = $v.amount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddWithdrawal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddWithdrawal;
  }

  @override
  void update(void Function(AddWithdrawalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddWithdrawal build() {
    final _$result = _$v ??
        new _$AddWithdrawal._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'AddWithdrawal', 'username'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, 'AddWithdrawal', 'amount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
