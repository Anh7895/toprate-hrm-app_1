//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/coefficient_pay.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'setting_block.g.dart';

/// SettingBlock
///
/// Properties:
/// * [id] 
/// * [number] 
/// * [time] 
/// * [placeholder] 
/// * [coefficientPayId] 
/// * [coefficientPay] 
abstract class SettingBlock implements Built<SettingBlock, SettingBlockBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'number')
    String? get number;

    @BuiltValueField(wireName: r'time')
    String? get time;

    @BuiltValueField(wireName: r'placeholder')
    String? get placeholder;

    @BuiltValueField(wireName: r'coefficient_pay_id')
    String? get coefficientPayId;

    @BuiltValueField(wireName: r'coefficient_pay')
    CoefficientPay? get coefficientPay;

    SettingBlock._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SettingBlockBuilder b) => b;

    factory SettingBlock([void updates(SettingBlockBuilder b)]) = _$SettingBlock;

    @BuiltValueSerializer(custom: true)
    static Serializer<SettingBlock> get serializer => _$SettingBlockSerializer();
}

class _$SettingBlockSerializer implements StructuredSerializer<SettingBlock> {
    @override
    final Iterable<Type> types = const [SettingBlock, _$SettingBlock];

    @override
    final String wireName = r'SettingBlock';

    @override
    Iterable<Object?> serialize(Serializers serializers, SettingBlock object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.number != null) {
            result
                ..add(r'number')
                ..add(serializers.serialize(object.number,
                    specifiedType: const FullType(String)));
        }
        if (object.time != null) {
            result
                ..add(r'time')
                ..add(serializers.serialize(object.time,
                    specifiedType: const FullType(String)));
        }
        if (object.placeholder != null) {
            result
                ..add(r'placeholder')
                ..add(serializers.serialize(object.placeholder,
                    specifiedType: const FullType(String)));
        }
        if (object.coefficientPayId != null) {
            result
                ..add(r'coefficient_pay_id')
                ..add(serializers.serialize(object.coefficientPayId,
                    specifiedType: const FullType(String)));
        }
        if (object.coefficientPay != null) {
            result
                ..add(r'coefficient_pay')
                ..add(serializers.serialize(object.coefficientPay,
                    specifiedType: const FullType(CoefficientPay)));
        }
        return result;
    }

    @override
    SettingBlock deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SettingBlockBuilder();

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
                case r'number':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.number = valueDes;
                    break;
                case r'time':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.time = valueDes;
                    break;
                case r'placeholder':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.placeholder = valueDes;
                    break;
                case r'coefficient_pay_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.coefficientPayId = valueDes;
                    break;
                case r'coefficient_pay':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(CoefficientPay)) as CoefficientPay;
                    result.coefficientPay.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

