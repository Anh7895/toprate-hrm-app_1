//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:openapi/src/model/general_timekeeping.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'salary.g.dart';

/// Domains\\Salary\\Models\\Salary
///
/// Properties:
/// * [id] 
/// * [companyId] 
/// * [userId] 
/// * [date] 
/// * [status] 
/// * [allHouseAllowance] 
/// * [salaryActual] 
/// * [allSeniorityAllowance] 
/// * [allOtherAllowance] 
/// * [allTotalAllowance] 
/// * [allAttendanceAllowance] 
/// * [bonus] 
/// * [recOtherReceive] 
/// * [recTotalReceive] 
/// * [salaryAdvance] 
/// * [dedOtherDeduction] 
/// * [dedTotalDeduction] 
/// * [actuallyReceived] 
/// * [totalWorkingDay] 
/// * [fullName] 
/// * [userCode] 
/// * [dayOff] 
/// * [dayOnLeave] 
/// * [dayOffOnLeave] 
/// * [dayOffWithoutLeave] 
/// * [generalTimekeeping] 
abstract class Salary implements Built<Salary, SalaryBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    @BuiltValueField(wireName: r'user_id')
    int? get userId;

    @BuiltValueField(wireName: r'date')
    Date? get date;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'all_house_allowance')
    double? get allHouseAllowance;

    @BuiltValueField(wireName: r'salary_actual')
    double? get salaryActual;

    @BuiltValueField(wireName: r'all_seniority_allowance')
    double? get allSeniorityAllowance;

    @BuiltValueField(wireName: r'all_other_allowance')
    double? get allOtherAllowance;

    @BuiltValueField(wireName: r'all_total_allowance')
    double? get allTotalAllowance;

    @BuiltValueField(wireName: r'all_attendance_allowance')
    double? get allAttendanceAllowance;

    @BuiltValueField(wireName: r'bonus')
    double? get bonus;

    @BuiltValueField(wireName: r'rec_other_receive')
    double? get recOtherReceive;

    @BuiltValueField(wireName: r'rec_total_receive')
    double? get recTotalReceive;

    @BuiltValueField(wireName: r'salary_advance')
    double? get salaryAdvance;

    @BuiltValueField(wireName: r'ded_other_deduction')
    double? get dedOtherDeduction;

    @BuiltValueField(wireName: r'ded_total_deduction')
    double? get dedTotalDeduction;

    @BuiltValueField(wireName: r'actually_received')
    double? get actuallyReceived;

    @BuiltValueField(wireName: r'total_working_day')
    double? get totalWorkingDay;

    @BuiltValueField(wireName: r'full_name')
    String? get fullName;

    @BuiltValueField(wireName: r'user_code')
    String? get userCode;

    @BuiltValueField(wireName: r'day_off')
    int? get dayOff;

    @BuiltValueField(wireName: r'day_on_leave')
    int? get dayOnLeave;

    @BuiltValueField(wireName: r'day_off_on_leave')
    int? get dayOffOnLeave;

    @BuiltValueField(wireName: r'day_off_without_leave')
    int? get dayOffWithoutLeave;

    @BuiltValueField(wireName: r'general_timekeeping')
    BuiltList<GeneralTimekeeping>? get generalTimekeeping;

    Salary._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SalaryBuilder b) => b;

    factory Salary([void updates(SalaryBuilder b)]) = _$Salary;

    @BuiltValueSerializer(custom: true)
    static Serializer<Salary> get serializer => _$SalarySerializer();
}

class _$SalarySerializer implements StructuredSerializer<Salary> {
    @override
    final Iterable<Type> types = const [Salary, _$Salary];

    @override
    final String wireName = r'Salary';

    @override
    Iterable<Object?> serialize(Serializers serializers, Salary object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        if (object.userId != null) {
            result
                ..add(r'user_id')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(int)));
        }
        if (object.date != null) {
            result
                ..add(r'date')
                ..add(serializers.serialize(object.date,
                    specifiedType: const FullType(Date)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.allHouseAllowance != null) {
            result
                ..add(r'all_house_allowance')
                ..add(serializers.serialize(object.allHouseAllowance,
                    specifiedType: const FullType(double)));
        }
        if (object.salaryActual != null) {
            result
                ..add(r'salary_actual')
                ..add(serializers.serialize(object.salaryActual,
                    specifiedType: const FullType(double)));
        }
        if (object.allSeniorityAllowance != null) {
            result
                ..add(r'all_seniority_allowance')
                ..add(serializers.serialize(object.allSeniorityAllowance,
                    specifiedType: const FullType(double)));
        }
        if (object.allOtherAllowance != null) {
            result
                ..add(r'all_other_allowance')
                ..add(serializers.serialize(object.allOtherAllowance,
                    specifiedType: const FullType(double)));
        }
        if (object.allTotalAllowance != null) {
            result
                ..add(r'all_total_allowance')
                ..add(serializers.serialize(object.allTotalAllowance,
                    specifiedType: const FullType(double)));
        }
        if (object.allAttendanceAllowance != null) {
            result
                ..add(r'all_attendance_allowance')
                ..add(serializers.serialize(object.allAttendanceAllowance,
                    specifiedType: const FullType(double)));
        }
        if (object.bonus != null) {
            result
                ..add(r'bonus')
                ..add(serializers.serialize(object.bonus,
                    specifiedType: const FullType(double)));
        }
        if (object.recOtherReceive != null) {
            result
                ..add(r'rec_other_receive')
                ..add(serializers.serialize(object.recOtherReceive,
                    specifiedType: const FullType(double)));
        }
        if (object.recTotalReceive != null) {
            result
                ..add(r'rec_total_receive')
                ..add(serializers.serialize(object.recTotalReceive,
                    specifiedType: const FullType(double)));
        }
        if (object.salaryAdvance != null) {
            result
                ..add(r'salary_advance')
                ..add(serializers.serialize(object.salaryAdvance,
                    specifiedType: const FullType(double)));
        }
        if (object.dedOtherDeduction != null) {
            result
                ..add(r'ded_other_deduction')
                ..add(serializers.serialize(object.dedOtherDeduction,
                    specifiedType: const FullType(double)));
        }
        if (object.dedTotalDeduction != null) {
            result
                ..add(r'ded_total_deduction')
                ..add(serializers.serialize(object.dedTotalDeduction,
                    specifiedType: const FullType(double)));
        }
        if (object.actuallyReceived != null) {
            result
                ..add(r'actually_received')
                ..add(serializers.serialize(object.actuallyReceived,
                    specifiedType: const FullType(double)));
        }
        if (object.totalWorkingDay != null) {
            result
                ..add(r'total_working_day')
                ..add(serializers.serialize(object.totalWorkingDay,
                    specifiedType: const FullType(double)));
        }
        if (object.fullName != null) {
            result
                ..add(r'full_name')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType(String)));
        }
        if (object.userCode != null) {
            result
                ..add(r'user_code')
                ..add(serializers.serialize(object.userCode,
                    specifiedType: const FullType(String)));
        }
        if (object.dayOff != null) {
            result
                ..add(r'day_off')
                ..add(serializers.serialize(object.dayOff,
                    specifiedType: const FullType(int)));
        }
        if (object.dayOnLeave != null) {
            result
                ..add(r'day_on_leave')
                ..add(serializers.serialize(object.dayOnLeave,
                    specifiedType: const FullType(int)));
        }
        if (object.dayOffOnLeave != null) {
            result
                ..add(r'day_off_on_leave')
                ..add(serializers.serialize(object.dayOffOnLeave,
                    specifiedType: const FullType(int)));
        }
        if (object.dayOffWithoutLeave != null) {
            result
                ..add(r'day_off_without_leave')
                ..add(serializers.serialize(object.dayOffWithoutLeave,
                    specifiedType: const FullType(int)));
        }
        if (object.generalTimekeeping != null) {
            result
                ..add(r'general_timekeeping')
                ..add(serializers.serialize(object.generalTimekeeping,
                    specifiedType: const FullType(BuiltList, [FullType(GeneralTimekeeping)])));
        }
        return result;
    }

    @override
    Salary deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SalaryBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
                case r'user_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.userId = valueDes;
                    break;
                case r'date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.date = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'all_house_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.allHouseAllowance = valueDes;
                    break;
                case r'salary_actual':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.salaryActual = valueDes;
                    break;
                case r'all_seniority_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.allSeniorityAllowance = valueDes;
                    break;
                case r'all_other_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.allOtherAllowance = valueDes;
                    break;
                case r'all_total_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.allTotalAllowance = valueDes;
                    break;
                case r'all_attendance_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.allAttendanceAllowance = valueDes;
                    break;
                case r'bonus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.bonus = valueDes;
                    break;
                case r'rec_other_receive':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.recOtherReceive = valueDes;
                    break;
                case r'rec_total_receive':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.recTotalReceive = valueDes;
                    break;
                case r'salary_advance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.salaryAdvance = valueDes;
                    break;
                case r'ded_other_deduction':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.dedOtherDeduction = valueDes;
                    break;
                case r'ded_total_deduction':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.dedTotalDeduction = valueDes;
                    break;
                case r'actually_received':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.actuallyReceived = valueDes;
                    break;
                case r'total_working_day':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.totalWorkingDay = valueDes;
                    break;
                case r'full_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fullName = valueDes;
                    break;
                case r'user_code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.userCode = valueDes;
                    break;
                case r'day_off':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.dayOff = valueDes;
                    break;
                case r'day_on_leave':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.dayOnLeave = valueDes;
                    break;
                case r'day_off_on_leave':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.dayOffOnLeave = valueDes;
                    break;
                case r'day_off_without_leave':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.dayOffWithoutLeave = valueDes;
                    break;
                case r'general_timekeeping':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(GeneralTimekeeping)])) as BuiltList<GeneralTimekeeping>;
                    result.generalTimekeeping.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

