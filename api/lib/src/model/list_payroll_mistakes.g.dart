// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_payroll_mistakes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPayrollMistakes extends ListPayrollMistakes {
  @override
  final int? id;
  @override
  final int? companyName;
  @override
  final String? fullName;
  @override
  final String? phone;
  @override
  final double? exAmountMoney;
  @override
  final String? content;
  @override
  final String? status;
  @override
  final String? payrollMistakeType;
  @override
  final String? createdAt;

  factory _$ListPayrollMistakes(
          [void Function(ListPayrollMistakesBuilder)? updates]) =>
      (new ListPayrollMistakesBuilder()..update(updates)).build();

  _$ListPayrollMistakes._(
      {this.id,
      this.companyName,
      this.fullName,
      this.phone,
      this.exAmountMoney,
      this.content,
      this.status,
      this.payrollMistakeType,
      this.createdAt})
      : super._();

  @override
  ListPayrollMistakes rebuild(
          void Function(ListPayrollMistakesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPayrollMistakesBuilder toBuilder() =>
      new ListPayrollMistakesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPayrollMistakes &&
        id == other.id &&
        companyName == other.companyName &&
        fullName == other.fullName &&
        phone == other.phone &&
        exAmountMoney == other.exAmountMoney &&
        content == other.content &&
        status == other.status &&
        payrollMistakeType == other.payrollMistakeType &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), companyName.hashCode),
                                fullName.hashCode),
                            phone.hashCode),
                        exAmountMoney.hashCode),
                    content.hashCode),
                status.hashCode),
            payrollMistakeType.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListPayrollMistakes')
          ..add('id', id)
          ..add('companyName', companyName)
          ..add('fullName', fullName)
          ..add('phone', phone)
          ..add('exAmountMoney', exAmountMoney)
          ..add('content', content)
          ..add('status', status)
          ..add('payrollMistakeType', payrollMistakeType)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ListPayrollMistakesBuilder
    implements Builder<ListPayrollMistakes, ListPayrollMistakesBuilder> {
  _$ListPayrollMistakes? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _companyName;
  int? get companyName => _$this._companyName;
  set companyName(int? companyName) => _$this._companyName = companyName;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

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

  String? _payrollMistakeType;
  String? get payrollMistakeType => _$this._payrollMistakeType;
  set payrollMistakeType(String? payrollMistakeType) =>
      _$this._payrollMistakeType = payrollMistakeType;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  ListPayrollMistakesBuilder() {
    ListPayrollMistakes._defaults(this);
  }

  ListPayrollMistakesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyName = $v.companyName;
      _fullName = $v.fullName;
      _phone = $v.phone;
      _exAmountMoney = $v.exAmountMoney;
      _content = $v.content;
      _status = $v.status;
      _payrollMistakeType = $v.payrollMistakeType;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPayrollMistakes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPayrollMistakes;
  }

  @override
  void update(void Function(ListPayrollMistakesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListPayrollMistakes build() {
    final _$result = _$v ??
        new _$ListPayrollMistakes._(
            id: id,
            companyName: companyName,
            fullName: fullName,
            phone: phone,
            exAmountMoney: exAmountMoney,
            content: content,
            status: status,
            payrollMistakeType: payrollMistakeType,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
