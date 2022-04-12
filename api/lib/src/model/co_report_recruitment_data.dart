//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'co_report_recruitment_data.g.dart';

/// COReportRecruitmentData
///
/// Properties:
/// * [companyName] 
/// * [recTotal] 
/// * [applyTotal] 
/// * [newEmployee] 
/// * [quitEmployee] 
abstract class COReportRecruitmentData implements Built<COReportRecruitmentData, COReportRecruitmentDataBuilder> {
    @BuiltValueField(wireName: r'company_name')
    String? get companyName;

    @BuiltValueField(wireName: r'rec_total')
    int? get recTotal;

    @BuiltValueField(wireName: r'apply_total')
    int? get applyTotal;

    @BuiltValueField(wireName: r'new_employee')
    int? get newEmployee;

    @BuiltValueField(wireName: r'quit_employee')
    int? get quitEmployee;

    COReportRecruitmentData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(COReportRecruitmentDataBuilder b) => b;

    factory COReportRecruitmentData([void updates(COReportRecruitmentDataBuilder b)]) = _$COReportRecruitmentData;

    @BuiltValueSerializer(custom: true)
    static Serializer<COReportRecruitmentData> get serializer => _$COReportRecruitmentDataSerializer();
}

class _$COReportRecruitmentDataSerializer implements StructuredSerializer<COReportRecruitmentData> {
    @override
    final Iterable<Type> types = const [COReportRecruitmentData, _$COReportRecruitmentData];

    @override
    final String wireName = r'COReportRecruitmentData';

    @override
    Iterable<Object?> serialize(Serializers serializers, COReportRecruitmentData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.companyName != null) {
            result
                ..add(r'company_name')
                ..add(serializers.serialize(object.companyName,
                    specifiedType: const FullType(String)));
        }
        if (object.recTotal != null) {
            result
                ..add(r'rec_total')
                ..add(serializers.serialize(object.recTotal,
                    specifiedType: const FullType(int)));
        }
        if (object.applyTotal != null) {
            result
                ..add(r'apply_total')
                ..add(serializers.serialize(object.applyTotal,
                    specifiedType: const FullType(int)));
        }
        if (object.newEmployee != null) {
            result
                ..add(r'new_employee')
                ..add(serializers.serialize(object.newEmployee,
                    specifiedType: const FullType(int)));
        }
        if (object.quitEmployee != null) {
            result
                ..add(r'quit_employee')
                ..add(serializers.serialize(object.quitEmployee,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    COReportRecruitmentData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = COReportRecruitmentDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'company_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.companyName = valueDes;
                    break;
                case r'rec_total':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.recTotal = valueDes;
                    break;
                case r'apply_total':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.applyTotal = valueDes;
                    break;
                case r'new_employee':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.newEmployee = valueDes;
                    break;
                case r'quit_employee':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.quitEmployee = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

