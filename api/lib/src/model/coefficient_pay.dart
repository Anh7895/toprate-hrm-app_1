//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coefficient_pay.g.dart';

/// Domains\\Timekeeping\\Models\\CoefficientPay
///
/// Properties:
/// * [id] 
/// * [code] 
/// * [unit] 
/// * [ratio] 
/// * [unitPrice] 
/// * [name] 
abstract class CoefficientPay implements Built<CoefficientPay, CoefficientPayBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'code')
    String? get code;

    @BuiltValueField(wireName: r'unit')
    String? get unit;

    @BuiltValueField(wireName: r'ratio')
    String? get ratio;

    @BuiltValueField(wireName: r'unit_price')
    double? get unitPrice;

    @BuiltValueField(wireName: r'name')
    String? get name;

    CoefficientPay._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CoefficientPayBuilder b) => b;

    factory CoefficientPay([void updates(CoefficientPayBuilder b)]) = _$CoefficientPay;

    @BuiltValueSerializer(custom: true)
    static Serializer<CoefficientPay> get serializer => _$CoefficientPaySerializer();
}

class _$CoefficientPaySerializer implements StructuredSerializer<CoefficientPay> {
    @override
    final Iterable<Type> types = const [CoefficientPay, _$CoefficientPay];

    @override
    final String wireName = r'CoefficientPay';

    @override
    Iterable<Object?> serialize(Serializers serializers, CoefficientPay object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.code != null) {
            result
                ..add(r'code')
                ..add(serializers.serialize(object.code,
                    specifiedType: const FullType(String)));
        }
        if (object.unit != null) {
            result
                ..add(r'unit')
                ..add(serializers.serialize(object.unit,
                    specifiedType: const FullType(String)));
        }
        if (object.ratio != null) {
            result
                ..add(r'ratio')
                ..add(serializers.serialize(object.ratio,
                    specifiedType: const FullType(String)));
        }
        if (object.unitPrice != null) {
            result
                ..add(r'unit_price')
                ..add(serializers.serialize(object.unitPrice,
                    specifiedType: const FullType(double)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CoefficientPay deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CoefficientPayBuilder();

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
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.code = valueDes;
                    break;
                case r'unit':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.unit = valueDes;
                    break;
                case r'ratio':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.ratio = valueDes;
                    break;
                case r'unit_price':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.unitPrice = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

