// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_withdrawal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListWithdrawal extends ListWithdrawal {
  @override
  final int? id;
  @override
  final String? companyName;
  @override
  final String? workerName;
  @override
  final String? accountBalance;
  @override
  final double? amountWithdrawal;
  @override
  final String? bankAccount;
  @override
  final String? bankName;
  @override
  final String? processedAt;

  factory _$ListWithdrawal([void Function(ListWithdrawalBuilder)? updates]) =>
      (new ListWithdrawalBuilder()..update(updates)).build();

  _$ListWithdrawal._(
      {this.id,
      this.companyName,
      this.workerName,
      this.accountBalance,
      this.amountWithdrawal,
      this.bankAccount,
      this.bankName,
      this.processedAt})
      : super._();

  @override
  ListWithdrawal rebuild(void Function(ListWithdrawalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListWithdrawalBuilder toBuilder() =>
      new ListWithdrawalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListWithdrawal &&
        id == other.id &&
        companyName == other.companyName &&
        workerName == other.workerName &&
        accountBalance == other.accountBalance &&
        amountWithdrawal == other.amountWithdrawal &&
        bankAccount == other.bankAccount &&
        bankName == other.bankName &&
        processedAt == other.processedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), companyName.hashCode),
                            workerName.hashCode),
                        accountBalance.hashCode),
                    amountWithdrawal.hashCode),
                bankAccount.hashCode),
            bankName.hashCode),
        processedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListWithdrawal')
          ..add('id', id)
          ..add('companyName', companyName)
          ..add('workerName', workerName)
          ..add('accountBalance', accountBalance)
          ..add('amountWithdrawal', amountWithdrawal)
          ..add('bankAccount', bankAccount)
          ..add('bankName', bankName)
          ..add('processedAt', processedAt))
        .toString();
  }
}

class ListWithdrawalBuilder
    implements Builder<ListWithdrawal, ListWithdrawalBuilder> {
  _$ListWithdrawal? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _workerName;
  String? get workerName => _$this._workerName;
  set workerName(String? workerName) => _$this._workerName = workerName;

  String? _accountBalance;
  String? get accountBalance => _$this._accountBalance;
  set accountBalance(String? accountBalance) =>
      _$this._accountBalance = accountBalance;

  double? _amountWithdrawal;
  double? get amountWithdrawal => _$this._amountWithdrawal;
  set amountWithdrawal(double? amountWithdrawal) =>
      _$this._amountWithdrawal = amountWithdrawal;

  String? _bankAccount;
  String? get bankAccount => _$this._bankAccount;
  set bankAccount(String? bankAccount) => _$this._bankAccount = bankAccount;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _processedAt;
  String? get processedAt => _$this._processedAt;
  set processedAt(String? processedAt) => _$this._processedAt = processedAt;

  ListWithdrawalBuilder() {
    ListWithdrawal._defaults(this);
  }

  ListWithdrawalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyName = $v.companyName;
      _workerName = $v.workerName;
      _accountBalance = $v.accountBalance;
      _amountWithdrawal = $v.amountWithdrawal;
      _bankAccount = $v.bankAccount;
      _bankName = $v.bankName;
      _processedAt = $v.processedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListWithdrawal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListWithdrawal;
  }

  @override
  void update(void Function(ListWithdrawalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListWithdrawal build() {
    final _$result = _$v ??
        new _$ListWithdrawal._(
            id: id,
            companyName: companyName,
            workerName: workerName,
            accountBalance: accountBalance,
            amountWithdrawal: amountWithdrawal,
            bankAccount: bankAccount,
            bankName: bankName,
            processedAt: processedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
