// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_payroll_mistakes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddPayrollMistakes extends AddPayrollMistakes {
  @override
  final int userId;
  @override
  final String payrollMistakeType;
  @override
  final double exAmountMoney;
  @override
  final String? content;

  factory _$AddPayrollMistakes(
          [void Function(AddPayrollMistakesBuilder)? updates]) =>
      (new AddPayrollMistakesBuilder()..update(updates)).build();

  _$AddPayrollMistakes._(
      {required this.userId,
      required this.payrollMistakeType,
      required this.exAmountMoney,
      this.content})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, 'AddPayrollMistakes', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        payrollMistakeType, 'AddPayrollMistakes', 'payrollMistakeType');
    BuiltValueNullFieldError.checkNotNull(
        exAmountMoney, 'AddPayrollMistakes', 'exAmountMoney');
  }

  @override
  AddPayrollMistakes rebuild(
          void Function(AddPayrollMistakesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddPayrollMistakesBuilder toBuilder() =>
      new AddPayrollMistakesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddPayrollMistakes &&
        userId == other.userId &&
        payrollMistakeType == other.payrollMistakeType &&
        exAmountMoney == other.exAmountMoney &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userId.hashCode), payrollMistakeType.hashCode),
            exAmountMoney.hashCode),
        content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddPayrollMistakes')
          ..add('userId', userId)
          ..add('payrollMistakeType', payrollMistakeType)
          ..add('exAmountMoney', exAmountMoney)
          ..add('content', content))
        .toString();
  }
}

class AddPayrollMistakesBuilder
    implements Builder<AddPayrollMistakes, AddPayrollMistakesBuilder> {
  _$AddPayrollMistakes? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _payrollMistakeType;
  String? get payrollMistakeType => _$this._payrollMistakeType;
  set payrollMistakeType(String? payrollMistakeType) =>
      _$this._payrollMistakeType = payrollMistakeType;

  double? _exAmountMoney;
  double? get exAmountMoney => _$this._exAmountMoney;
  set exAmountMoney(double? exAmountMoney) =>
      _$this._exAmountMoney = exAmountMoney;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  AddPayrollMistakesBuilder() {
    AddPayrollMistakes._defaults(this);
  }

  AddPayrollMistakesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _payrollMistakeType = $v.payrollMistakeType;
      _exAmountMoney = $v.exAmountMoney;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddPayrollMistakes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddPayrollMistakes;
  }

  @override
  void update(void Function(AddPayrollMistakesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddPayrollMistakes build() {
    final _$result = _$v ??
        new _$AddPayrollMistakes._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, 'AddPayrollMistakes', 'userId'),
            payrollMistakeType: BuiltValueNullFieldError.checkNotNull(
                payrollMistakeType, 'AddPayrollMistakes', 'payrollMistakeType'),
            exAmountMoney: BuiltValueNullFieldError.checkNotNull(
                exAmountMoney, 'AddPayrollMistakes', 'exAmountMoney'),
            content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
