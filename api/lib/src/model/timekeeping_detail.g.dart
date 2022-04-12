// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timekeeping_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimekeepingDetail extends TimekeepingDetail {
  @override
  final String? geCp;
  @override
  final double? geHours;
  @override
  final double? gePerHour;
  @override
  final double? geTotalCp;

  factory _$TimekeepingDetail(
          [void Function(TimekeepingDetailBuilder)? updates]) =>
      (new TimekeepingDetailBuilder()..update(updates)).build();

  _$TimekeepingDetail._(
      {this.geCp, this.geHours, this.gePerHour, this.geTotalCp})
      : super._();

  @override
  TimekeepingDetail rebuild(void Function(TimekeepingDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimekeepingDetailBuilder toBuilder() =>
      new TimekeepingDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimekeepingDetail &&
        geCp == other.geCp &&
        geHours == other.geHours &&
        gePerHour == other.gePerHour &&
        geTotalCp == other.geTotalCp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, geCp.hashCode), geHours.hashCode), gePerHour.hashCode),
        geTotalCp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimekeepingDetail')
          ..add('geCp', geCp)
          ..add('geHours', geHours)
          ..add('gePerHour', gePerHour)
          ..add('geTotalCp', geTotalCp))
        .toString();
  }
}

class TimekeepingDetailBuilder
    implements Builder<TimekeepingDetail, TimekeepingDetailBuilder> {
  _$TimekeepingDetail? _$v;

  String? _geCp;
  String? get geCp => _$this._geCp;
  set geCp(String? geCp) => _$this._geCp = geCp;

  double? _geHours;
  double? get geHours => _$this._geHours;
  set geHours(double? geHours) => _$this._geHours = geHours;

  double? _gePerHour;
  double? get gePerHour => _$this._gePerHour;
  set gePerHour(double? gePerHour) => _$this._gePerHour = gePerHour;

  double? _geTotalCp;
  double? get geTotalCp => _$this._geTotalCp;
  set geTotalCp(double? geTotalCp) => _$this._geTotalCp = geTotalCp;

  TimekeepingDetailBuilder() {
    TimekeepingDetail._defaults(this);
  }

  TimekeepingDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _geCp = $v.geCp;
      _geHours = $v.geHours;
      _gePerHour = $v.gePerHour;
      _geTotalCp = $v.geTotalCp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimekeepingDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimekeepingDetail;
  }

  @override
  void update(void Function(TimekeepingDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimekeepingDetail build() {
    final _$result = _$v ??
        new _$TimekeepingDetail._(
            geCp: geCp,
            geHours: geHours,
            gePerHour: gePerHour,
            geTotalCp: geTotalCp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
