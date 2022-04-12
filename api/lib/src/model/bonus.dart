//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/bonus_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bonus.g.dart';

/// Bonus
///
/// Properties:
/// * [bonusTotal] 
/// * [bonusDetail] 
abstract class Bonus implements Built<Bonus, BonusBuilder> {
    @BuiltValueField(wireName: r'bonus_total')
    double? get bonusTotal;

    @BuiltValueField(wireName: r'bonus_detail')
    BuiltList<BonusDetail>? get bonusDetail;

    Bonus._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BonusBuilder b) => b;

    factory Bonus([void updates(BonusBuilder b)]) = _$Bonus;

    @BuiltValueSerializer(custom: true)
    static Serializer<Bonus> get serializer => _$BonusSerializer();
}

class _$BonusSerializer implements StructuredSerializer<Bonus> {
    @override
    final Iterable<Type> types = const [Bonus, _$Bonus];

    @override
    final String wireName = r'Bonus';

    @override
    Iterable<Object?> serialize(Serializers serializers, Bonus object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.bonusTotal != null) {
            result
                ..add(r'bonus_total')
                ..add(serializers.serialize(object.bonusTotal,
                    specifiedType: const FullType(double)));
        }
        if (object.bonusDetail != null) {
            result
                ..add(r'bonus_detail')
                ..add(serializers.serialize(object.bonusDetail,
                    specifiedType: const FullType(BuiltList, [FullType(BonusDetail)])));
        }
        return result;
    }

    @override
    Bonus deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BonusBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'bonus_total':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.bonusTotal = valueDes;
                    break;
                case r'bonus_detail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(BonusDetail)])) as BuiltList<BonusDetail>;
                    result.bonusDetail.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

