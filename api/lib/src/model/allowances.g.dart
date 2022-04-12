// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allowances.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Allowances extends Allowances {
  @override
  final double? allowanceTotal;
  @override
  final double? totalTimekeepingAllowance;
  @override
  final BuiltList<AllowanceDetail>? allowanceDetail;

  factory _$Allowances([void Function(AllowancesBuilder)? updates]) =>
      (new AllowancesBuilder()..update(updates)).build();

  _$Allowances._(
      {this.allowanceTotal,
      this.totalTimekeepingAllowance,
      this.allowanceDetail})
      : super._();

  @override
  Allowances rebuild(void Function(AllowancesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllowancesBuilder toBuilder() => new AllowancesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Allowances &&
        allowanceTotal == other.allowanceTotal &&
        totalTimekeepingAllowance == other.totalTimekeepingAllowance &&
        allowanceDetail == other.allowanceDetail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, allowanceTotal.hashCode),
            totalTimekeepingAllowance.hashCode),
        allowanceDetail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Allowances')
          ..add('allowanceTotal', allowanceTotal)
          ..add('totalTimekeepingAllowance', totalTimekeepingAllowance)
          ..add('allowanceDetail', allowanceDetail))
        .toString();
  }
}

class AllowancesBuilder implements Builder<Allowances, AllowancesBuilder> {
  _$Allowances? _$v;

  double? _allowanceTotal;
  double? get allowanceTotal => _$this._allowanceTotal;
  set allowanceTotal(double? allowanceTotal) =>
      _$this._allowanceTotal = allowanceTotal;

  double? _totalTimekeepingAllowance;
  double? get totalTimekeepingAllowance => _$this._totalTimekeepingAllowance;
  set totalTimekeepingAllowance(double? totalTimekeepingAllowance) =>
      _$this._totalTimekeepingAllowance = totalTimekeepingAllowance;

  ListBuilder<AllowanceDetail>? _allowanceDetail;
  ListBuilder<AllowanceDetail> get allowanceDetail =>
      _$this._allowanceDetail ??= new ListBuilder<AllowanceDetail>();
  set allowanceDetail(ListBuilder<AllowanceDetail>? allowanceDetail) =>
      _$this._allowanceDetail = allowanceDetail;

  AllowancesBuilder() {
    Allowances._defaults(this);
  }

  AllowancesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowanceTotal = $v.allowanceTotal;
      _totalTimekeepingAllowance = $v.totalTimekeepingAllowance;
      _allowanceDetail = $v.allowanceDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Allowances other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Allowances;
  }

  @override
  void update(void Function(AllowancesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Allowances build() {
    _$Allowances _$result;
    try {
      _$result = _$v ??
          new _$Allowances._(
              allowanceTotal: allowanceTotal,
              totalTimekeepingAllowance: totalTimekeepingAllowance,
              allowanceDetail: _allowanceDetail?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowanceDetail';
        _allowanceDetail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Allowances', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
