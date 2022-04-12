// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Statement extends Statement {
  @override
  final int? id;
  @override
  final int? userId;
  @override
  final int? companyId;
  @override
  final String? closingBalance;
  @override
  final String? dateFinalSettlement;

  factory _$Statement([void Function(StatementBuilder)? updates]) =>
      (new StatementBuilder()..update(updates)).build();

  _$Statement._(
      {this.id,
      this.userId,
      this.companyId,
      this.closingBalance,
      this.dateFinalSettlement})
      : super._();

  @override
  Statement rebuild(void Function(StatementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatementBuilder toBuilder() => new StatementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Statement &&
        id == other.id &&
        userId == other.userId &&
        companyId == other.companyId &&
        closingBalance == other.closingBalance &&
        dateFinalSettlement == other.dateFinalSettlement;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), userId.hashCode), companyId.hashCode),
            closingBalance.hashCode),
        dateFinalSettlement.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Statement')
          ..add('id', id)
          ..add('userId', userId)
          ..add('companyId', companyId)
          ..add('closingBalance', closingBalance)
          ..add('dateFinalSettlement', dateFinalSettlement))
        .toString();
  }
}

class StatementBuilder implements Builder<Statement, StatementBuilder> {
  _$Statement? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  String? _closingBalance;
  String? get closingBalance => _$this._closingBalance;
  set closingBalance(String? closingBalance) =>
      _$this._closingBalance = closingBalance;

  String? _dateFinalSettlement;
  String? get dateFinalSettlement => _$this._dateFinalSettlement;
  set dateFinalSettlement(String? dateFinalSettlement) =>
      _$this._dateFinalSettlement = dateFinalSettlement;

  StatementBuilder() {
    Statement._defaults(this);
  }

  StatementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _companyId = $v.companyId;
      _closingBalance = $v.closingBalance;
      _dateFinalSettlement = $v.dateFinalSettlement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Statement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Statement;
  }

  @override
  void update(void Function(StatementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Statement build() {
    final _$result = _$v ??
        new _$Statement._(
            id: id,
            userId: userId,
            companyId: companyId,
            closingBalance: closingBalance,
            dateFinalSettlement: dateFinalSettlement);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
