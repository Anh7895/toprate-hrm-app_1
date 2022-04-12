// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payroll_mistake.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayrollMistake extends PayrollMistake {
  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String? payrollMistakeType;
  @override
  final double? exAmountMoney;
  @override
  final String? content;
  @override
  final String? status;

  factory _$PayrollMistake([void Function(PayrollMistakeBuilder)? updates]) =>
      (new PayrollMistakeBuilder()..update(updates)).build();

  _$PayrollMistake._(
      {this.id,
      this.userId,
      this.payrollMistakeType,
      this.exAmountMoney,
      this.content,
      this.status})
      : super._();

  @override
  PayrollMistake rebuild(void Function(PayrollMistakeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayrollMistakeBuilder toBuilder() =>
      new PayrollMistakeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayrollMistake &&
        id == other.id &&
        userId == other.userId &&
        payrollMistakeType == other.payrollMistakeType &&
        exAmountMoney == other.exAmountMoney &&
        content == other.content &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), userId.hashCode),
                    payrollMistakeType.hashCode),
                exAmountMoney.hashCode),
            content.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PayrollMistake')
          ..add('id', id)
          ..add('userId', userId)
          ..add('payrollMistakeType', payrollMistakeType)
          ..add('exAmountMoney', exAmountMoney)
          ..add('content', content)
          ..add('status', status))
        .toString();
  }
}

class PayrollMistakeBuilder
    implements Builder<PayrollMistake, PayrollMistakeBuilder> {
  _$PayrollMistake? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  PayrollMistakeBuilder() {
    PayrollMistake._defaults(this);
  }

  PayrollMistakeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _payrollMistakeType = $v.payrollMistakeType;
      _exAmountMoney = $v.exAmountMoney;
      _content = $v.content;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayrollMistake other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayrollMistake;
  }

  @override
  void update(void Function(PayrollMistakeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PayrollMistake build() {
    final _$result = _$v ??
        new _$PayrollMistake._(
            id: id,
            userId: userId,
            payrollMistakeType: payrollMistakeType,
            exAmountMoney: exAmountMoney,
            content: content,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
