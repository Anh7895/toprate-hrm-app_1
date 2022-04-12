//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'allowance_detail.g.dart';

/// AllowanceDetail
///
/// Properties:
/// * [allowanceType] 
/// * [allowanceHours] 
/// * [allowancePricePerHour] 
/// * [totalCost] 
abstract class AllowanceDetail implements Built<AllowanceDetail, AllowanceDetailBuilder> {
    @BuiltValueField(wireName: r'allowance_type')
    String? get allowanceType;

    @BuiltValueField(wireName: r'allowance_hours')
    double? get allowanceHours;

    @BuiltValueField(wireName: r'allowance_price_per_hour')
    double? get allowancePricePerHour;

    @BuiltValueField(wireName: r'total_cost')
    double? get totalCost;

    AllowanceDetail._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AllowanceDetailBuilder b) => b;

    factory AllowanceDetail([void updates(AllowanceDetailBuilder b)]) = _$AllowanceDetail;

    @BuiltValueSerializer(custom: true)
    static Serializer<AllowanceDetail> get serializer => _$AllowanceDetailSerializer();
}

class _$AllowanceDetailSerializer implements StructuredSerializer<AllowanceDetail> {
    @override
    final Iterable<Type> types = const [AllowanceDetail, _$AllowanceDetail];

    @override
    final String wireName = r'AllowanceDetail';

    @override
    Iterable<Object?> serialize(Serializers serializers, AllowanceDetail object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.allowanceType != null) {
            result
                ..add(r'allowance_type')
                ..add(serializers.serialize(object.allowanceType,
                    specifiedType: const FullType(String)));
        }
        if (object.allowanceHours != null) {
            result
                ..add(r'allowance_hours')
                ..add(serializers.serialize(object.allowanceHours,
                    specifiedType: const FullType(double)));
        }
        if (object.allowancePricePerHour != null) {
            result
                ..add(r'allowance_price_per_hour')
                ..add(serializers.serialize(object.allowancePricePerHour,
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
    AllowanceDetail deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AllowanceDetailBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'allowance_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.allowanceType = valueDes;
                    break;
                case r'allowance_hours':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.allowanceHours = valueDes;
                    break;
                case r'allowance_price_per_hour':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.allowancePricePerHour = valueDes;
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

