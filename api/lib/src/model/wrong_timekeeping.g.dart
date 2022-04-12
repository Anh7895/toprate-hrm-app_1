// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wrong_timekeeping.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WrongTimekeeping extends WrongTimekeeping {
  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? date;
  @override
  final double? hour;
  @override
  final String? status;
  @override
  final int? coefficientPayId;
  @override
  final int? companyId;

  factory _$WrongTimekeeping(
          [void Function(WrongTimekeepingBuilder)? updates]) =>
      (new WrongTimekeepingBuilder()..update(updates)).build();

  _$WrongTimekeeping._(
      {this.id,
      this.code,
      this.date,
      this.hour,
      this.status,
      this.coefficientPayId,
      this.companyId})
      : super._();

  @override
  WrongTimekeeping rebuild(void Function(WrongTimekeepingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WrongTimekeepingBuilder toBuilder() =>
      new WrongTimekeepingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WrongTimekeeping &&
        id == other.id &&
        code == other.code &&
        date == other.date &&
        hour == other.hour &&
        status == other.status &&
        coefficientPayId == other.coefficientPayId &&
        companyId == other.companyId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, id.hashCode), code.hashCode), date.hashCode),
                    hour.hashCode),
                status.hashCode),
            coefficientPayId.hashCode),
        companyId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WrongTimekeeping')
          ..add('id', id)
          ..add('code', code)
          ..add('date', date)
          ..add('hour', hour)
          ..add('status', status)
          ..add('coefficientPayId', coefficientPayId)
          ..add('companyId', companyId))
        .toString();
  }
}

class WrongTimekeepingBuilder
    implements Builder<WrongTimekeeping, WrongTimekeepingBuilder> {
  _$WrongTimekeeping? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  double? _hour;
  double? get hour => _$this._hour;
  set hour(double? hour) => _$this._hour = hour;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _coefficientPayId;
  int? get coefficientPayId => _$this._coefficientPayId;
  set coefficientPayId(int? coefficientPayId) =>
      _$this._coefficientPayId = coefficientPayId;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  WrongTimekeepingBuilder() {
    WrongTimekeeping._defaults(this);
  }

  WrongTimekeepingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _date = $v.date;
      _hour = $v.hour;
      _status = $v.status;
      _coefficientPayId = $v.coefficientPayId;
      _companyId = $v.companyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WrongTimekeeping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WrongTimekeeping;
  }

  @override
  void update(void Function(WrongTimekeepingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WrongTimekeeping build() {
    final _$result = _$v ??
        new _$WrongTimekeeping._(
            id: id,
            code: code,
            date: date,
            hour: hour,
            status: status,
            coefficientPayId: coefficientPayId,
            companyId: companyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
