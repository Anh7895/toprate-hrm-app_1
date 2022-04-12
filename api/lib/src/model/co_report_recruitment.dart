//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/co_report_recruitment_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/total.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'co_report_recruitment.g.dart';

/// COReportRecruitment
///
/// Properties:
/// * [data] 
/// * [total] 
abstract class COReportRecruitment implements Built<COReportRecruitment, COReportRecruitmentBuilder> {
    @BuiltValueField(wireName: r'data')
    BuiltList<COReportRecruitmentData>? get data;

    @BuiltValueField(wireName: r'total')
    Total? get total;

    COReportRecruitment._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(COReportRecruitmentBuilder b) => b;

    factory COReportRecruitment([void updates(COReportRecruitmentBuilder b)]) = _$COReportRecruitment;

    @BuiltValueSerializer(custom: true)
    static Serializer<COReportRecruitment> get serializer => _$COReportRecruitmentSerializer();
}

class _$COReportRecruitmentSerializer implements StructuredSerializer<COReportRecruitment> {
    @override
    final Iterable<Type> types = const [COReportRecruitment, _$COReportRecruitment];

    @override
    final String wireName = r'COReportRecruitment';

    @override
    Iterable<Object?> serialize(Serializers serializers, COReportRecruitment object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.data != null) {
            result
                ..add(r'data')
                ..add(serializers.serialize(object.data,
                    specifiedType: const FullType(BuiltList, [FullType(COReportRecruitmentData)])));
        }
        if (object.total != null) {
            result
                ..add(r'total')
                ..add(serializers.serialize(object.total,
                    specifiedType: const FullType(Total)));
        }
        return result;
    }

    @override
    COReportRecruitment deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = COReportRecruitmentBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(COReportRecruitmentData)])) as BuiltList<COReportRecruitmentData>;
                    result.data.replace(valueDes);
                    break;
                case r'total':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Total)) as Total;
                    result.total.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

