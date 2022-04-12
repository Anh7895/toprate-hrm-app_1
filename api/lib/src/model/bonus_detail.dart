//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bonus_detail.g.dart';

/// BonusDetail
///
/// Properties:
/// * [bonusType] 
/// * [bonusHours] 
/// * [bonusPricePerHour] 
/// * [totalCost] 
abstract class BonusDetail implements Built<BonusDetail, BonusDetailBuilder> {
    @BuiltValueField(wireName: r'bonus_type')
    String? get bonusType;

    @BuiltValueField(wireName: r'bonus_hours')
    double? get bonusHours;

    @BuiltValueField(wireName: r'bonus_price_per_hour')
    double? get bonusPricePerHour;

    @BuiltValueField(wireName: r'total_cost')
    double? get totalCost;

    BonusDetail._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BonusDetailBuilder b) => b;

    factory BonusDetail([void updates(BonusDetailBuilder b)]) = _$BonusDetail;

    @BuiltValueSerializer(custom: true)
    static Serializer<BonusDetail> get serializer => _$BonusDetailSerializer();
}

class _$BonusDetailSerializer implements StructuredSerializer<BonusDetail> {
    @override
    final Iterable<Type> types = const [BonusDetail, _$BonusDetail];

    @override
    final String wireName = r'BonusDetail';

    @override
    Iterable<Object?> serialize(Serializers serializers, BonusDetail object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.bonusType != null) {
            result
                ..add(r'bonus_type')
                ..add(serializers.serialize(object.bonusType,
                    specifiedType: const FullType(String)));
        }
        if (object.bonusHours != null) {
            result
                ..add(r'bonus_hours')
                ..add(serializers.serialize(object.bonusHours,
                    specifiedType: const FullType(double)));
        }
        if (object.bonusPricePerHour != null) {
            result
                ..add(r'bonus_price_per_hour')
                ..add(serializers.serialize(object.bonusPricePerHour,
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
    BonusDetail deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BonusDetailBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'bonus_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.bonusType = valueDes;
                    break;
                case r'bonus_hours':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.bonusHours = valueDes;
                    break;
                case r'bonus_price_per_hour':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.bonusPricePerHour = valueDes;
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

