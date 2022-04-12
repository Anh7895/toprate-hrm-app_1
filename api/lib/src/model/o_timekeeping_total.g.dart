// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_timekeeping_total.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OTimekeepingTotal extends OTimekeepingTotal {
  @override
  final int? id;
  @override
  final int? companyId;
  @override
  final int? userId;
  @override
  final String? date;
  @override
  final String? allHouseAllowance;
  @override
  final String? salaryActual;
  @override
  final String? allSeniorityAllowance;
  @override
  final String? allOtherAllowance;
  @override
  final String? allTotalAllowance;
  @override
  final String? allAttendanceAllowance;
  @override
  final String? bonus;
  @override
  final String? recOtherReceive;
  @override
  final String? recTotalReceive;
  @override
  final String? salaryAdvance;
  @override
  final String? dedOtherDeduction;
  @override
  final String? dedTotalDeduction;
  @override
  final String? actuallyReceived;
  @override
  final String? totalWorkingDay;
  @override
  final String? fullName;
  @override
  final String? userCode;
  @override
  final int? dayOff;
  @override
  final int? dayOnLeave;
  @override
  final Company? company;
  @override
  final User? user;

  factory _$OTimekeepingTotal(
          [void Function(OTimekeepingTotalBuilder)? updates]) =>
      (new OTimekeepingTotalBuilder()..update(updates)).build();

  _$OTimekeepingTotal._(
      {this.id,
      this.companyId,
      this.userId,
      this.date,
      this.allHouseAllowance,
      this.salaryActual,
      this.allSeniorityAllowance,
      this.allOtherAllowance,
      this.allTotalAllowance,
      this.allAttendanceAllowance,
      this.bonus,
      this.recOtherReceive,
      this.recTotalReceive,
      this.salaryAdvance,
      this.dedOtherDeduction,
      this.dedTotalDeduction,
      this.actuallyReceived,
      this.totalWorkingDay,
      this.fullName,
      this.userCode,
      this.dayOff,
      this.dayOnLeave,
      this.company,
      this.user})
      : super._();

  @override
  OTimekeepingTotal rebuild(void Function(OTimekeepingTotalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OTimekeepingTotalBuilder toBuilder() =>
      new OTimekeepingTotalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OTimekeepingTotal &&
        id == other.id &&
        companyId == other.companyId &&
        userId == other.userId &&
        date == other.date &&
        allHouseAllowance == other.allHouseAllowance &&
        salaryActual == other.salaryActual &&
        allSeniorityAllowance == other.allSeniorityAllowance &&
        allOtherAllowance == other.allOtherAllowance &&
        allTotalAllowance == other.allTotalAllowance &&
        allAttendanceAllowance == other.allAttendanceAllowance &&
        bonus == other.bonus &&
        recOtherReceive == other.recOtherReceive &&
        recTotalReceive == other.recTotalReceive &&
        salaryAdvance == other.salaryAdvance &&
        dedOtherDeduction == other.dedOtherDeduction &&
        dedTotalDeduction == other.dedTotalDeduction &&
        actuallyReceived == other.actuallyReceived &&
        totalWorkingDay == other.totalWorkingDay &&
        fullName == other.fullName &&
        userCode == other.userCode &&
        dayOff == other.dayOff &&
        dayOnLeave == other.dayOnLeave &&
        company == other.company &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, id.hashCode), companyId.hashCode), userId.hashCode), date.hashCode), allHouseAllowance.hashCode),
                                                                                salaryActual.hashCode),
                                                                            allSeniorityAllowance.hashCode),
                                                                        allOtherAllowance.hashCode),
                                                                    allTotalAllowance.hashCode),
                                                                allAttendanceAllowance.hashCode),
                                                            bonus.hashCode),
                                                        recOtherReceive.hashCode),
                                                    recTotalReceive.hashCode),
                                                salaryAdvance.hashCode),
                                            dedOtherDeduction.hashCode),
                                        dedTotalDeduction.hashCode),
                                    actuallyReceived.hashCode),
                                totalWorkingDay.hashCode),
                            fullName.hashCode),
                        userCode.hashCode),
                    dayOff.hashCode),
                dayOnLeave.hashCode),
            company.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OTimekeepingTotal')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('userId', userId)
          ..add('date', date)
          ..add('allHouseAllowance', allHouseAllowance)
          ..add('salaryActual', salaryActual)
          ..add('allSeniorityAllowance', allSeniorityAllowance)
          ..add('allOtherAllowance', allOtherAllowance)
          ..add('allTotalAllowance', allTotalAllowance)
          ..add('allAttendanceAllowance', allAttendanceAllowance)
          ..add('bonus', bonus)
          ..add('recOtherReceive', recOtherReceive)
          ..add('recTotalReceive', recTotalReceive)
          ..add('salaryAdvance', salaryAdvance)
          ..add('dedOtherDeduction', dedOtherDeduction)
          ..add('dedTotalDeduction', dedTotalDeduction)
          ..add('actuallyReceived', actuallyReceived)
          ..add('totalWorkingDay', totalWorkingDay)
          ..add('fullName', fullName)
          ..add('userCode', userCode)
          ..add('dayOff', dayOff)
          ..add('dayOnLeave', dayOnLeave)
          ..add('company', company)
          ..add('user', user))
        .toString();
  }
}

class OTimekeepingTotalBuilder
    implements Builder<OTimekeepingTotal, OTimekeepingTotalBuilder> {
  _$OTimekeepingTotal? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _allHouseAllowance;
  String? get allHouseAllowance => _$this._allHouseAllowance;
  set allHouseAllowance(String? allHouseAllowance) =>
      _$this._allHouseAllowance = allHouseAllowance;

  String? _salaryActual;
  String? get salaryActual => _$this._salaryActual;
  set salaryActual(String? salaryActual) => _$this._salaryActual = salaryActual;

  String? _allSeniorityAllowance;
  String? get allSeniorityAllowance => _$this._allSeniorityAllowance;
  set allSeniorityAllowance(String? allSeniorityAllowance) =>
      _$this._allSeniorityAllowance = allSeniorityAllowance;

  String? _allOtherAllowance;
  String? get allOtherAllowance => _$this._allOtherAllowance;
  set allOtherAllowance(String? allOtherAllowance) =>
      _$this._allOtherAllowance = allOtherAllowance;

  String? _allTotalAllowance;
  String? get allTotalAllowance => _$this._allTotalAllowance;
  set allTotalAllowance(String? allTotalAllowance) =>
      _$this._allTotalAllowance = allTotalAllowance;

  String? _allAttendanceAllowance;
  String? get allAttendanceAllowance => _$this._allAttendanceAllowance;
  set allAttendanceAllowance(String? allAttendanceAllowance) =>
      _$this._allAttendanceAllowance = allAttendanceAllowance;

  String? _bonus;
  String? get bonus => _$this._bonus;
  set bonus(String? bonus) => _$this._bonus = bonus;

  String? _recOtherReceive;
  String? get recOtherReceive => _$this._recOtherReceive;
  set recOtherReceive(String? recOtherReceive) =>
      _$this._recOtherReceive = recOtherReceive;

  String? _recTotalReceive;
  String? get recTotalReceive => _$this._recTotalReceive;
  set recTotalReceive(String? recTotalReceive) =>
      _$this._recTotalReceive = recTotalReceive;

  String? _salaryAdvance;
  String? get salaryAdvance => _$this._salaryAdvance;
  set salaryAdvance(String? salaryAdvance) =>
      _$this._salaryAdvance = salaryAdvance;

  String? _dedOtherDeduction;
  String? get dedOtherDeduction => _$this._dedOtherDeduction;
  set dedOtherDeduction(String? dedOtherDeduction) =>
      _$this._dedOtherDeduction = dedOtherDeduction;

  String? _dedTotalDeduction;
  String? get dedTotalDeduction => _$this._dedTotalDeduction;
  set dedTotalDeduction(String? dedTotalDeduction) =>
      _$this._dedTotalDeduction = dedTotalDeduction;

  String? _actuallyReceived;
  String? get actuallyReceived => _$this._actuallyReceived;
  set actuallyReceived(String? actuallyReceived) =>
      _$this._actuallyReceived = actuallyReceived;

  String? _totalWorkingDay;
  String? get totalWorkingDay => _$this._totalWorkingDay;
  set totalWorkingDay(String? totalWorkingDay) =>
      _$this._totalWorkingDay = totalWorkingDay;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _userCode;
  String? get userCode => _$this._userCode;
  set userCode(String? userCode) => _$this._userCode = userCode;

  int? _dayOff;
  int? get dayOff => _$this._dayOff;
  set dayOff(int? dayOff) => _$this._dayOff = dayOff;

  int? _dayOnLeave;
  int? get dayOnLeave => _$this._dayOnLeave;
  set dayOnLeave(int? dayOnLeave) => _$this._dayOnLeave = dayOnLeave;

  CompanyBuilder? _company;
  CompanyBuilder get company => _$this._company ??= new CompanyBuilder();
  set company(CompanyBuilder? company) => _$this._company = company;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  OTimekeepingTotalBuilder() {
    OTimekeepingTotal._defaults(this);
  }

  OTimekeepingTotalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _userId = $v.userId;
      _date = $v.date;
      _allHouseAllowance = $v.allHouseAllowance;
      _salaryActual = $v.salaryActual;
      _allSeniorityAllowance = $v.allSeniorityAllowance;
      _allOtherAllowance = $v.allOtherAllowance;
      _allTotalAllowance = $v.allTotalAllowance;
      _allAttendanceAllowance = $v.allAttendanceAllowance;
      _bonus = $v.bonus;
      _recOtherReceive = $v.recOtherReceive;
      _recTotalReceive = $v.recTotalReceive;
      _salaryAdvance = $v.salaryAdvance;
      _dedOtherDeduction = $v.dedOtherDeduction;
      _dedTotalDeduction = $v.dedTotalDeduction;
      _actuallyReceived = $v.actuallyReceived;
      _totalWorkingDay = $v.totalWorkingDay;
      _fullName = $v.fullName;
      _userCode = $v.userCode;
      _dayOff = $v.dayOff;
      _dayOnLeave = $v.dayOnLeave;
      _company = $v.company?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OTimekeepingTotal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OTimekeepingTotal;
  }

  @override
  void update(void Function(OTimekeepingTotalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OTimekeepingTotal build() {
    _$OTimekeepingTotal _$result;
    try {
      _$result = _$v ??
          new _$OTimekeepingTotal._(
              id: id,
              companyId: companyId,
              userId: userId,
              date: date,
              allHouseAllowance: allHouseAllowance,
              salaryActual: salaryActual,
              allSeniorityAllowance: allSeniorityAllowance,
              allOtherAllowance: allOtherAllowance,
              allTotalAllowance: allTotalAllowance,
              allAttendanceAllowance: allAttendanceAllowance,
              bonus: bonus,
              recOtherReceive: recOtherReceive,
              recTotalReceive: recTotalReceive,
              salaryAdvance: salaryAdvance,
              dedOtherDeduction: dedOtherDeduction,
              dedTotalDeduction: dedTotalDeduction,
              actuallyReceived: actuallyReceived,
              totalWorkingDay: totalWorkingDay,
              fullName: fullName,
              userCode: userCode,
              dayOff: dayOff,
              dayOnLeave: dayOnLeave,
              company: _company?.build(),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'company';
        _company?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OTimekeepingTotal', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
