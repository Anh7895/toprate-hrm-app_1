//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coefficient_pay.g.dart';

/// CoefficientPay
///
/// Properties:
/// * [id] 
/// * [code] 
/// * [name] 
/// * [desc] 
/// * [status] 
abstract class CoefficientPay implements Built<CoefficientPay, CoefficientPayBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'code')
    String? get code;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'desc')
    String? get desc;

    @BuiltValueField(wireName: r'status')
    String? get status;

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
                    specifiedType: const FullType(String)));
        }
        if (object.code != null) {
            result
                ..add(r'code')
                ..add(serializers.serialize(object.code,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.desc != null) {
            result
                ..add(r'desc')
                ..add(serializers.serialize(object.desc,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
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
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.code = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'desc':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.desc = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

