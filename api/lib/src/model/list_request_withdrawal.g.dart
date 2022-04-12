// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_request_withdrawal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListRequestWithdrawal extends ListRequestWithdrawal {
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
  final String? status;

  factory _$ListRequestWithdrawal(
          [void Function(ListRequestWithdrawalBuilder)? updates]) =>
      (new ListRequestWithdrawalBuilder()..update(updates)).build();

  _$ListRequestWithdrawal._(
      {this.id,
      this.companyName,
      this.workerName,
      this.accountBalance,
      this.amountWithdrawal,
      this.status})
      : super._();

  @override
  ListRequestWithdrawal rebuild(
          void Function(ListRequestWithdrawalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListRequestWithdrawalBuilder toBuilder() =>
      new ListRequestWithdrawalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRequestWithdrawal &&
        id == other.id &&
        companyName == other.companyName &&
        workerName == other.workerName &&
        accountBalance == other.accountBalance &&
        amountWithdrawal == other.amountWithdrawal &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), companyName.hashCode),
                    workerName.hashCode),
                accountBalance.hashCode),
            amountWithdrawal.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListRequestWithdrawal')
          ..add('id', id)
          ..add('companyName', companyName)
          ..add('workerName', workerName)
          ..add('accountBalance', accountBalance)
          ..add('amountWithdrawal', amountWithdrawal)
          ..add('status', status))
        .toString();
  }
}

class ListRequestWithdrawalBuilder
    implements Builder<ListRequestWithdrawal, ListRequestWithdrawalBuilder> {
  _$ListRequestWithdrawal? _$v;

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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListRequestWithdrawalBuilder() {
    ListRequestWithdrawal._defaults(this);
  }

  ListRequestWithdrawalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyName = $v.companyName;
      _workerName = $v.workerName;
      _accountBalance = $v.accountBalance;
      _amountWithdrawal = $v.amountWithdrawal;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListRequestWithdrawal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListRequestWithdrawal;
  }

  @override
  void update(void Function(ListRequestWithdrawalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListRequestWithdrawal build() {
    final _$result = _$v ??
        new _$ListRequestWithdrawal._(
            id: id,
            companyName: companyName,
            workerName: workerName,
            accountBalance: accountBalance,
            amountWithdrawal: amountWithdrawal,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
