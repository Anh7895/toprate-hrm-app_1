// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bonus.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Bonus extends Bonus {
  @override
  final double? bonusTotal;
  @override
  final BuiltList<BonusDetail>? bonusDetail;

  factory _$Bonus([void Function(BonusBuilder)? updates]) =>
      (new BonusBuilder()..update(updates)).build();

  _$Bonus._({this.bonusTotal, this.bonusDetail}) : super._();

  @override
  Bonus rebuild(void Function(BonusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BonusBuilder toBuilder() => new BonusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bonus &&
        bonusTotal == other.bonusTotal &&
        bonusDetail == other.bonusDetail;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bonusTotal.hashCode), bonusDetail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Bonus')
          ..add('bonusTotal', bonusTotal)
          ..add('bonusDetail', bonusDetail))
        .toString();
  }
}

class BonusBuilder implements Builder<Bonus, BonusBuilder> {
  _$Bonus? _$v;

  double? _bonusTotal;
  double? get bonusTotal => _$this._bonusTotal;
  set bonusTotal(double? bonusTotal) => _$this._bonusTotal = bonusTotal;

  ListBuilder<BonusDetail>? _bonusDetail;
  ListBuilder<BonusDetail> get bonusDetail =>
      _$this._bonusDetail ??= new ListBuilder<BonusDetail>();
  set bonusDetail(ListBuilder<BonusDetail>? bonusDetail) =>
      _$this._bonusDetail = bonusDetail;

  BonusBuilder() {
    Bonus._defaults(this);
  }

  BonusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bonusTotal = $v.bonusTotal;
      _bonusDetail = $v.bonusDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Bonus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Bonus;
  }

  @override
  void update(void Function(BonusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Bonus build() {
    _$Bonus _$result;
    try {
      _$result = _$v ??
          new _$Bonus._(
              bonusTotal: bonusTotal, bonusDetail: _bonusDetail?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bonusDetail';
        _bonusDetail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Bonus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
