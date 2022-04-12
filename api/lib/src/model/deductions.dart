//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/deduction_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deductions.g.dart';

/// Deductions
///
/// Properties:
/// * [deductionTotal] 
/// * [deductionDetail] 
abstract class Deductions implements Built<Deductions, DeductionsBuilder> {
    @BuiltValueField(wireName: r'deduction_total')
    double? get deductionTotal;

    @BuiltValueField(wireName: r'deduction_detail')
    BuiltList<DeductionDetail>? get deductionDetail;

    Deductions._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(DeductionsBuilder b) => b;

    factory Deductions([void updates(DeductionsBuilder b)]) = _$Deductions;

    @BuiltValueSerializer(custom: true)
    static Serializer<Deductions> get serializer => _$DeductionsSerializer();
}

class _$DeductionsSerializer implements StructuredSerializer<Deductions> {
    @override
    final Iterable<Type> types = const [Deductions, _$Deductions];

    @override
    final String wireName = r'Deductions';

    @override
    Iterable<Object?> serialize(Serializers serializers, Deductions object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.deductionTotal != null) {
            result
                ..add(r'deduction_total')
                ..add(serializers.serialize(object.deductionTotal,
                    specifiedType: const FullType(double)));
        }
        if (object.deductionDetail != null) {
            result
                ..add(r'deduction_detail')
                ..add(serializers.serialize(object.deductionDetail,
                    specifiedType: const FullType(BuiltList, [FullType(DeductionDetail)])));
        }
        return result;
    }

    @override
    Deductions deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DeductionsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'deduction_total':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.deductionTotal = valueDes;
                    break;
                case r'deduction_detail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(DeductionDetail)])) as BuiltList<DeductionDetail>;
                    result.deductionDetail.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

