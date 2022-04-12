// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Bank extends Bank {
  @override
  final int? id;
  @override
  final String? bankName;
  @override
  final String? bankAccount;
  @override
  final String? cardNumber;

  factory _$Bank([void Function(BankBuilder)? updates]) =>
      (new BankBuilder()..update(updates)).build();

  _$Bank._({this.id, this.bankName, this.bankAccount, this.cardNumber})
      : super._();

  @override
  Bank rebuild(void Function(BankBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BankBuilder toBuilder() => new BankBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bank &&
        id == other.id &&
        bankName == other.bankName &&
        bankAccount == other.bankAccount &&
        cardNumber == other.cardNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), bankName.hashCode), bankAccount.hashCode),
        cardNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Bank')
          ..add('id', id)
          ..add('bankName', bankName)
          ..add('bankAccount', bankAccount)
          ..add('cardNumber', cardNumber))
        .toString();
  }
}

class BankBuilder implements Builder<Bank, BankBuilder> {
  _$Bank? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _bankAccount;
  String? get bankAccount => _$this._bankAccount;
  set bankAccount(String? bankAccount) => _$this._bankAccount = bankAccount;

  String? _cardNumber;
  String? get cardNumber => _$this._cardNumber;
  set cardNumber(String? cardNumber) => _$this._cardNumber = cardNumber;

  BankBuilder() {
    Bank._defaults(this);
  }

  BankBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _bankName = $v.bankName;
      _bankAccount = $v.bankAccount;
      _cardNumber = $v.cardNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Bank other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Bank;
  }

  @override
  void update(void Function(BankBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Bank build() {
    final _$result = _$v ??
        new _$Bank._(
            id: id,
            bankName: bankName,
            bankAccount: bankAccount,
            cardNumber: cardNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
