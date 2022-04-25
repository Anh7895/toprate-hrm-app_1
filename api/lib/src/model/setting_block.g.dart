// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_block.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingBlock extends SettingBlock {
  @override
  final String? id;
  @override
  final String? number;
  @override
  final String? time;
  @override
  final String? placeholder;
  @override
  final String? coefficientPayId;
  @override
  final CoefficientPay? coefficientPay;

  factory _$SettingBlock([void Function(SettingBlockBuilder)? updates]) =>
      (new SettingBlockBuilder()..update(updates)).build();

  _$SettingBlock._(
      {this.id,
      this.number,
      this.time,
      this.placeholder,
      this.coefficientPayId,
      this.coefficientPay})
      : super._();

  @override
  SettingBlock rebuild(void Function(SettingBlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingBlockBuilder toBuilder() => new SettingBlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingBlock &&
        id == other.id &&
        number == other.number &&
        time == other.time &&
        placeholder == other.placeholder &&
        coefficientPayId == other.coefficientPayId &&
        coefficientPay == other.coefficientPay;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), number.hashCode), time.hashCode),
                placeholder.hashCode),
            coefficientPayId.hashCode),
        coefficientPay.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingBlock')
          ..add('id', id)
          ..add('number', number)
          ..add('time', time)
          ..add('placeholder', placeholder)
          ..add('coefficientPayId', coefficientPayId)
          ..add('coefficientPay', coefficientPay))
        .toString();
  }
}

class SettingBlockBuilder
    implements Builder<SettingBlock, SettingBlockBuilder> {
  _$SettingBlock? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(String? placeholder) => _$this._placeholder = placeholder;

  String? _coefficientPayId;
  String? get coefficientPayId => _$this._coefficientPayId;
  set coefficientPayId(String? coefficientPayId) =>
      _$this._coefficientPayId = coefficientPayId;

  CoefficientPayBuilder? _coefficientPay;
  CoefficientPayBuilder get coefficientPay =>
      _$this._coefficientPay ??= new CoefficientPayBuilder();
  set coefficientPay(CoefficientPayBuilder? coefficientPay) =>
      _$this._coefficientPay = coefficientPay;

  SettingBlockBuilder() {
    SettingBlock._defaults(this);
  }

  SettingBlockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _number = $v.number;
      _time = $v.time;
      _placeholder = $v.placeholder;
      _coefficientPayId = $v.coefficientPayId;
      _coefficientPay = $v.coefficientPay?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingBlock other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SettingBlock;
  }

  @override
  void update(void Function(SettingBlockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SettingBlock build() {
    _$SettingBlock _$result;
    try {
      _$result = _$v ??
          new _$SettingBlock._(
              id: id,
              number: number,
              time: time,
              placeholder: placeholder,
              coefficientPayId: coefficientPayId,
              coefficientPay: _coefficientPay?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coefficientPay';
        _coefficientPay?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SettingBlock', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
