//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/timekeeping_salary_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timekeeping_salary.g.dart';

/// TimekeepingSalary
///
/// Properties:
/// * [totalTimeKeepingSalary] 
/// * [timekeepingDetail] 
abstract class TimekeepingSalary implements Built<TimekeepingSalary, TimekeepingSalaryBuilder> {
    @BuiltValueField(wireName: r'total_time_keeping_salary')
    double? get totalTimeKeepingSalary;

    @BuiltValueField(wireName: r'timekeeping_detail')
    BuiltList<TimekeepingSalaryDetail>? get timekeepingDetail;

    TimekeepingSalary._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TimekeepingSalaryBuilder b) => b;

    factory TimekeepingSalary([void updates(TimekeepingSalaryBuilder b)]) = _$TimekeepingSalary;

    @BuiltValueSerializer(custom: true)
    static Serializer<TimekeepingSalary> get serializer => _$TimekeepingSalarySerializer();
}

class _$TimekeepingSalarySerializer implements StructuredSerializer<TimekeepingSalary> {
    @override
    final Iterable<Type> types = const [TimekeepingSalary, _$TimekeepingSalary];

    @override
    final String wireName = r'TimekeepingSalary';

    @override
    Iterable<Object?> serialize(Serializers serializers, TimekeepingSalary object,
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
                    specifiedType: const FullType(BuiltList, [FullType(TimekeepingSalaryDetail)])));
        }
        return result;
    }

    @override
    TimekeepingSalary deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TimekeepingSalaryBuilder();

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
                        specifiedType: const FullType(BuiltList, [FullType(TimekeepingSalaryDetail)])) as BuiltList<TimekeepingSalaryDetail>;
                    result.timekeepingDetail.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

