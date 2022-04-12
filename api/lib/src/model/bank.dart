//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bank.g.dart';

/// Domains\\User\\Models\\Bank
///
/// Properties:
/// * [id] 
/// * [bankName] 
/// * [bankAccount] 
/// * [cardNumber] 
abstract class Bank implements Built<Bank, BankBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'bank_name')
    String? get bankName;

    @BuiltValueField(wireName: r'bank_account')
    String? get bankAccount;

    @BuiltValueField(wireName: r'card_number')
    String? get cardNumber;

    Bank._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BankBuilder b) => b;

    factory Bank([void updates(BankBuilder b)]) = _$Bank;

    @BuiltValueSerializer(custom: true)
    static Serializer<Bank> get serializer => _$BankSerializer();
}

class _$BankSerializer implements StructuredSerializer<Bank> {
    @override
    final Iterable<Type> types = const [Bank, _$Bank];

    @override
    final String wireName = r'Bank';

    @override
    Iterable<Object?> serialize(Serializers serializers, Bank object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.bankName != null) {
            result
                ..add(r'bank_name')
                ..add(serializers.serialize(object.bankName,
                    specifiedType: const FullType(String)));
        }
        if (object.bankAccount != null) {
            result
                ..add(r'bank_account')
                ..add(serializers.serialize(object.bankAccount,
                    specifiedType: const FullType(String)));
        }
        if (object.cardNumber != null) {
            result
                ..add(r'card_number')
                ..add(serializers.serialize(object.cardNumber,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Bank deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BankBuilder();

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
                case r'bank_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.bankName = valueDes;
                    break;
                case r'bank_account':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.bankAccount = valueDes;
                    break;
                case r'card_number':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.cardNumber = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

