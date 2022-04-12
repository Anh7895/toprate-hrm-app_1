//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/c_otimekeeping_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timekeeping_salary_detail.g.dart';

/// TimekeepingSalaryDetail
///
/// Properties:
/// * [totalTimeKeepingSalary] 
/// * [timekeepingDetail] 
abstract class TimekeepingSalaryDetail implements Built<TimekeepingSalaryDetail, TimekeepingSalaryDetailBuilder> {
    @BuiltValueField(wireName: r'total_time_keeping_salary')
    double? get totalTimeKeepingSalary;

    @BuiltValueField(wireName: r'timekeeping_detail')
    BuiltList<COtimekeepingDetail>? get timekeepingDetail;

    TimekeepingSalaryDetail._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TimekeepingSalaryDetailBuilder b) => b;

    factory TimekeepingSalaryDetail([void updates(TimekeepingSalaryDetailBuilder b)]) = _$TimekeepingSalaryDetail;

    @BuiltValueSerializer(custom: true)
    static Serializer<TimekeepingSalaryDetail> get serializer => _$TimekeepingSalaryDetailSerializer();
}

class _$TimekeepingSalaryDetailSerializer implements StructuredSerializer<TimekeepingSalaryDetail> {
    @override
    final Iterable<Type> types = const [TimekeepingSalaryDetail, _$TimekeepingSalaryDetail];

    @override
    final String wireName = r'TimekeepingSalaryDetail';

    @override
    Iterable<Object?> serialize(Serializers serializers, TimekeepingSalaryDetail object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.totalTimeKeepingSalary != null) {
            result
                ..add(r'total_time_keeping_salary')
                ..add(serializers.serialize(object.totalTimeKeepingSalary,
                    specifiedType: const FullType(double)));
        }
        if (object.timekeepingDetail != null) {
            result
                ..add(r'timekeeping_detail')
                ..add(serializers.serialize(object.timekeepingDetail,
                    specifiedType: const FullType(BuiltList, [FullType(COtimekeepingDetail)])));
        }
        return result;
    }

    @override
    TimekeepingSalaryDetail deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TimekeepingSalaryDetailBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'total_time_keeping_salary':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.totalTimeKeepingSalary = valueDes;
                    break;
                case r'timekeeping_detail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(COtimekeepingDetail)])) as BuiltList<COtimekeepingDetail>;
                    result.timekeepingDetail.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

