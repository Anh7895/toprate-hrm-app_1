//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deduction_detail.g.dart';

/// DeductionDetail
///
/// Properties:
/// * [deductionType] 
/// * [deductionHours] 
/// * [deductionPricePerHour] 
/// * [totalCost] 
abstract class DeductionDetail implements Built<DeductionDetail, DeductionDetailBuilder> {
    @BuiltValueField(wireName: r'deduction_type')
    String? get deductionType;

    @BuiltValueField(wireName: r'deduction_hours')
    double? get deductionHours;

    @BuiltValueField(wireName: r'deduction_price_per_hour')
    double? get deductionPricePerHour;

    @BuiltValueField(wireName: r'total_cost')
    double? get totalCost;

    DeductionDetail._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(DeductionDetailBuilder b) => b;

    factory DeductionDetail([void updates(DeductionDetailBuilder b)]) = _$DeductionDetail;

    @BuiltValueSerializer(custom: true)
    static Serializer<DeductionDetail> get serializer => _$DeductionDetailSerializer();
}

class _$DeductionDetailSerializer implements StructuredSerializer<DeductionDetail> {
    @override
    final Iterable<Type> types = const [DeductionDetail, _$DeductionDetail];

    @override
    final String wireName = r'DeductionDetail';

    @override
    Iterable<Object?> serialize(Serializers serializers, DeductionDetail object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.deductionType != null) {
            result
                ..add(r'deduction_type')
                ..add(serializers.serialize(object.deductionType,
                    specifiedType: const FullType(String)));
        }
        if (object.deductionHours != null) {
            result
                ..add(r'deduction_hours')
                ..add(serializers.serialize(object.deductionHours,
                    specifiedType: const FullType(double)));
        }
        if (object.deductionPricePerHour != null) {
            result
                ..add(r'deduction_price_per_hour')
                ..add(serializers.serialize(object.deductionPricePerHour,
                    specifiedType: const FullType(double)));
        }
        if (object.totalCost != null) {
            result
                ..add(r'total_cost')
                ..add(serializers.serialize(object.totalCost,
                    specifiedType: const FullType(double)));
        }
        return result;
    }

    @override
    DeductionDetail deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DeductionDetailBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'deduction_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.deductionType = valueDes;
                    break;
                case r'deduction_hours':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.deductionHours = valueDes;
                    break;
                case r'deduction_price_per_hour':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.deductionPricePerHour = valueDes;
                    break;
                case r'total_cost':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.totalCost = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

