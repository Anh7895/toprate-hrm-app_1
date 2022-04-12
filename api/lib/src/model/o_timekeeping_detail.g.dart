// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_timekeeping_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OTimekeepingDetail extends OTimekeepingDetail {
  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? date;
  @override
  final String? hour;
  @override
  final int? coefficientPayId;
  @override
  final int? companyId;
  @override
  final String? fullName;
  @override
  final Company? company;
  @override
  final OConfficientPay? coefficientPay;

  factory _$OTimekeepingDetail(
          [void Function(OTimekeepingDetailBuilder)? updates]) =>
      (new OTimekeepingDetailBuilder()..update(updates)).build();

  _$OTimekeepingDetail._(
      {this.id,
      this.code,
      this.date,
      this.hour,
      this.coefficientPayId,
      this.companyId,
      this.fullName,
      this.company,
      this.coefficientPay})
      : super._();

  @override
  OTimekeepingDetail rebuild(
          void Function(OTimekeepingDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OTimekeepingDetailBuilder toBuilder() =>
      new OTimekeepingDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OTimekeepingDetail &&
        id == other.id &&
        code == other.code &&
        date == other.date &&
        hour == other.hour &&
        coefficientPayId == other.coefficientPayId &&
        companyId == other.companyId &&
        fullName == other.fullName &&
        company == other.company &&
        coefficientPay == other.coefficientPay;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), code.hashCode),
                                date.hashCode),
                            hour.hashCode),
                        coefficientPayId.hashCode),
                    companyId.hashCode),
                fullName.hashCode),
            company.hashCode),
        coefficientPay.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OTimekeepingDetail')
          ..add('id', id)
          ..add('code', code)
          ..add('date', date)
          ..add('hour', hour)
          ..add('coefficientPayId', coefficientPayId)
          ..add('companyId', companyId)
          ..add('fullName', fullName)
          ..add('company', company)
          ..add('coefficientPay', coefficientPay))
        .toString();
  }
}

class OTimekeepingDetailBuilder
    implements Builder<OTimekeepingDetail, OTimekeepingDetailBuilder> {
  _$OTimekeepingDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _hour;
  String? get hour => _$this._hour;
  set hour(String? hour) => _$this._hour = hour;

  int? _coefficientPayId;
  int? get coefficientPayId => _$this._coefficientPayId;
  set coefficientPayId(int? coefficientPayId) =>
      _$this._coefficientPayId = coefficientPayId;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  CompanyBuilder? _company;
  CompanyBuilder get company => _$this._company ??= new CompanyBuilder();
  set company(CompanyBuilder? company) => _$this._company = company;

  OConfficientPayBuilder? _coefficientPay;
  OConfficientPayBuilder get coefficientPay =>
      _$this._coefficientPay ??= new OConfficientPayBuilder();
  set coefficientPay(OConfficientPayBuilder? coefficientPay) =>
      _$this._coefficientPay = coefficientPay;

  OTimekeepingDetailBuilder() {
    OTimekeepingDetail._defaults(this);
  }

  OTimekeepingDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _date = $v.date;
      _hour = $v.hour;
      _coefficientPayId = $v.coefficientPayId;
      _companyId = $v.companyId;
      _fullName = $v.fullName;
      _company = $v.company?.toBuilder();
      _coefficientPay = $v.coefficientPay?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OTimekeepingDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OTimekeepingDetail;
  }

  @override
  void update(void Function(OTimekeepingDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OTimekeepingDetail build() {
    _$OTimekeepingDetail _$result;
    try {
      _$result = _$v ??
          new _$OTimekeepingDetail._(
              id: id,
              code: code,
              date: date,
              hour: hour,
              coefficientPayId: coefficientPayId,
              companyId: companyId,
              fullName: fullName,
              company: _company?.build(),
              coefficientPay: _coefficientPay?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'company';
        _company?.build();
        _$failedField = 'coefficientPay';
        _coefficientPay?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OTimekeepingDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
