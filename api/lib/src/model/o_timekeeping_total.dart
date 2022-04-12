//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/company.dart';
import 'package:openapi/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_timekeeping_total.g.dart';

/// OTimekeepingTotal
///
/// Properties:
/// * [id] 
/// * [companyId] 
/// * [userId] 
/// * [date] 
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
/// * [company] 
/// * [user] 
abstract class OTimekeepingTotal implements Built<OTimekeepingTotal, OTimekeepingTotalBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    @BuiltValueField(wireName: r'user_id')
    int? get userId;

    @BuiltValueField(wireName: r'date')
    String? get date;

    @BuiltValueField(wireName: r'all_house_allowance')
    String? get allHouseAllowance;

    @BuiltValueField(wireName: r'salary_actual')
    String? get salaryActual;

    @BuiltValueField(wireName: r'all_seniority_allowance')
    String? get allSeniorityAllowance;

    @BuiltValueField(wireName: r'all_other_allowance')
    String? get allOtherAllowance;

    @BuiltValueField(wireName: r'all_total_allowance')
    String? get allTotalAllowance;

    @BuiltValueField(wireName: r'all_attendance_allowance')
    String? get allAttendanceAllowance;

    @BuiltValueField(wireName: r'bonus')
    String? get bonus;

    @BuiltValueField(wireName: r'rec_other_receive')
    String? get recOtherReceive;

    @BuiltValueField(wireName: r'rec_total_receive')
    String? get recTotalReceive;

    @BuiltValueField(wireName: r'salary_advance')
    String? get salaryAdvance;

    @BuiltValueField(wireName: r'ded_other_deduction')
    String? get dedOtherDeduction;

    @BuiltValueField(wireName: r'ded_total_deduction')
    String? get dedTotalDeduction;

    @BuiltValueField(wireName: r'actually_received')
    String? get actuallyReceived;

    @BuiltValueField(wireName: r'total_working_day')
    String? get totalWorkingDay;

    @BuiltValueField(wireName: r'full_name')
    String? get fullName;

    @BuiltValueField(wireName: r'user_code')
    String? get userCode;

    @BuiltValueField(wireName: r'day_off')
    int? get dayOff;

    @BuiltValueField(wireName: r'day_on_leave')
    int? get dayOnLeave;

    @BuiltValueField(wireName: r'company')
    Company? get company;

    @BuiltValueField(wireName: r'user')
    User? get user;

    OTimekeepingTotal._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OTimekeepingTotalBuilder b) => b;

    factory OTimekeepingTotal([void updates(OTimekeepingTotalBuilder b)]) = _$OTimekeepingTotal;

    @BuiltValueSerializer(custom: true)
    static Serializer<OTimekeepingTotal> get serializer => _$OTimekeepingTotalSerializer();
}

class _$OTimekeepingTotalSerializer implements StructuredSerializer<OTimekeepingTotal> {
    @override
    final Iterable<Type> types = const [OTimekeepingTotal, _$OTimekeepingTotal];

    @override
    final String wireName = r'OTimekeepingTotal';

    @override
    Iterable<Object?> serialize(Serializers serializers, OTimekeepingTotal object,
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
                    specifiedType: const FullType(String)));
        }
        if (object.allHouseAllowance != null) {
            result
                ..add(r'all_house_allowance')
                ..add(serializers.serialize(object.allHouseAllowance,
                    specifiedType: const FullType(String)));
        }
        if (object.salaryActual != null) {
            result
                ..add(r'salary_actual')
                ..add(serializers.serialize(object.salaryActual,
                    specifiedType: const FullType(String)));
        }
        if (object.allSeniorityAllowance != null) {
            result
                ..add(r'all_seniority_allowance')
                ..add(serializers.serialize(object.allSeniorityAllowance,
                    specifiedType: const FullType(String)));
        }
        if (object.allOtherAllowance != null) {
            result
                ..add(r'all_other_allowance')
                ..add(serializers.serialize(object.allOtherAllowance,
                    specifiedType: const FullType(String)));
        }
        if (object.allTotalAllowance != null) {
            result
                ..add(r'all_total_allowance')
                ..add(serializers.serialize(object.allTotalAllowance,
                    specifiedType: const FullType(String)));
        }
        if (object.allAttendanceAllowance != null) {
            result
                ..add(r'all_attendance_allowance')
                ..add(serializers.serialize(object.allAttendanceAllowance,
                    specifiedType: const FullType(String)));
        }
        if (object.bonus != null) {
            result
                ..add(r'bonus')
                ..add(serializers.serialize(object.bonus,
                    specifiedType: const FullType(String)));
        }
        if (object.recOtherReceive != null) {
            result
                ..add(r'rec_other_receive')
                ..add(serializers.serialize(object.recOtherReceive,
                    specifiedType: const FullType(String)));
        }
        if (object.recTotalReceive != null) {
            result
                ..add(r'rec_total_receive')
                ..add(serializers.serialize(object.recTotalReceive,
                    specifiedType: const FullType(String)));
        }
        if (object.salaryAdvance != null) {
            result
                ..add(r'salary_advance')
                ..add(serializers.serialize(object.salaryAdvance,
                    specifiedType: const FullType(String)));
        }
        if (object.dedOtherDeduction != null) {
            result
                ..add(r'ded_other_deduction')
                ..add(serializers.serialize(object.dedOtherDeduction,
                    specifiedType: const FullType(String)));
        }
        if (object.dedTotalDeduction != null) {
            result
                ..add(r'ded_total_deduction')
                ..add(serializers.serialize(object.dedTotalDeduction,
                    specifiedType: const FullType(String)));
        }
        if (object.actuallyReceived != null) {
            result
                ..add(r'actually_received')
                ..add(serializers.serialize(object.actuallyReceived,
                    specifiedType: const FullType(String)));
        }
        if (object.totalWorkingDay != null) {
            result
                ..add(r'total_working_day')
                ..add(serializers.serialize(object.totalWorkingDay,
                    specifiedType: const FullType(String)));
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
        if (object.company != null) {
            result
                ..add(r'company')
                ..add(serializers.serialize(object.company,
                    specifiedType: const FullType(Company)));
        }
        if (object.user != null) {
            result
                ..add(r'user')
                ..add(serializers.serialize(object.user,
                    specifiedType: const FullType(User)));
        }
        return result;
    }

    @override
    OTimekeepingTotal deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OTimekeepingTotalBuilder();

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
                        specifiedType: const FullType(String)) as String;
                    result.date = valueDes;
                    break;
                case r'all_house_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.allHouseAllowance = valueDes;
                    break;
                case r'salary_actual':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.salaryActual = valueDes;
                    break;
                case r'all_seniority_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.allSeniorityAllowance = valueDes;
                    break;
                case r'all_other_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.allOtherAllowance = valueDes;
                    break;
                case r'all_total_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.allTotalAllowance = valueDes;
                    break;
                case r'all_attendance_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.allAttendanceAllowance = valueDes;
                    break;
                case r'bonus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.bonus = valueDes;
                    break;
                case r'rec_other_receive':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.recOtherReceive = valueDes;
                    break;
                case r'rec_total_receive':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.recTotalReceive = valueDes;
                    break;
                case r'salary_advance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.salaryAdvance = valueDes;
                    break;
                case r'ded_other_deduction':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.dedOtherDeduction = valueDes;
                    break;
                case r'ded_total_deduction':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.dedTotalDeduction = valueDes;
                    break;
                case r'actually_received':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.actuallyReceived = valueDes;
                    break;
                case r'total_working_day':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
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
                case r'company':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Company)) as Company;
                    result.company.replace(valueDes);
                    break;
                case r'user':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(User)) as User;
                    result.user.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

