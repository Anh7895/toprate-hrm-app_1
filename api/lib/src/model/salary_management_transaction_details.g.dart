// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_management_transaction_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SalaryManagementTransactionDetails
    extends SalaryManagementTransactionDetails {
  @override
  final String? date;
  @override
  final String? amount;
  @override
  final String? type;
  @override
  final String? content;

  factory _$SalaryManagementTransactionDetails(
          [void Function(SalaryManagementTransactionDetailsBuilder)?
              updates]) =>
      (new SalaryManagementTransactionDetailsBuilder()..update(updates))
          .build();

  _$SalaryManagementTransactionDetails._(
      {this.date, this.amount, this.type, this.content})
      : super._();

  @override
  SalaryManagementTransactionDetails rebuild(
          void Function(SalaryManagementTransactionDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SalaryManagementTransactionDetailsBuilder toBuilder() =>
      new SalaryManagementTransactionDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SalaryManagementTransactionDetails &&
        date == other.date &&
        amount == other.amount &&
        type == other.type &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, date.hashCode), amount.hashCode), type.hashCode),
        content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SalaryManagementTransactionDetails')
          ..add('date', date)
          ..add('amount', amount)
          ..add('type', type)
          ..add('content', content))
        .toString();
  }
}

class SalaryManagementTransactionDetailsBuilder
    implements
        Builder<SalaryManagementTransactionDetails,
            SalaryManagementTransactionDetailsBuilder> {
  _$SalaryManagementTransactionDetails? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  SalaryManagementTransactionDetailsBuilder() {
    SalaryManagementTransactionDetails._defaults(this);
  }

  SalaryManagementTransactionDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _amount = $v.amount;
      _type = $v.type;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SalaryManagementTransactionDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SalaryManagementTransactionDetails;
  }

  @override
  void update(
      void Function(SalaryManagementTransactionDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SalaryManagementTransactionDetails build() {
    final _$result = _$v ??
        new _$SalaryManagementTransactionDetails._(
            date: date, amount: amount, type: type, content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
