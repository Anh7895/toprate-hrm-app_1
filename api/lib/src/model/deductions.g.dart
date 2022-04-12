// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deductions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Deductions extends Deductions {
  @override
  final double? deductionTotal;
  @override
  final BuiltList<DeductionDetail>? deductionDetail;

  factory _$Deductions([void Function(DeductionsBuilder)? updates]) =>
      (new DeductionsBuilder()..update(updates)).build();

  _$Deductions._({this.deductionTotal, this.deductionDetail}) : super._();

  @override
  Deductions rebuild(void Function(DeductionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeductionsBuilder toBuilder() => new DeductionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Deductions &&
        deductionTotal == other.deductionTotal &&
        deductionDetail == other.deductionDetail;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, deductionTotal.hashCode), deductionDetail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Deductions')
          ..add('deductionTotal', deductionTotal)
          ..add('deductionDetail', deductionDetail))
        .toString();
  }
}

class DeductionsBuilder implements Builder<Deductions, DeductionsBuilder> {
  _$Deductions? _$v;

  double? _deductionTotal;
  double? get deductionTotal => _$this._deductionTotal;
  set deductionTotal(double? deductionTotal) =>
      _$this._deductionTotal = deductionTotal;

  ListBuilder<DeductionDetail>? _deductionDetail;
  ListBuilder<DeductionDetail> get deductionDetail =>
      _$this._deductionDetail ??= new ListBuilder<DeductionDetail>();
  set deductionDetail(ListBuilder<DeductionDetail>? deductionDetail) =>
      _$this._deductionDetail = deductionDetail;

  DeductionsBuilder() {
    Deductions._defaults(this);
  }

  DeductionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deductionTotal = $v.deductionTotal;
      _deductionDetail = $v.deductionDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Deductions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Deductions;
  }

  @override
  void update(void Function(DeductionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Deductions build() {
    _$Deductions _$result;
    try {
      _$result = _$v ??
          new _$Deductions._(
              deductionTotal: deductionTotal,
              deductionDetail: _deductionDetail?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deductionDetail';
        _deductionDetail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Deductions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
