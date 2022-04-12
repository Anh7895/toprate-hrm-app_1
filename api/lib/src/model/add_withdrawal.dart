//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_withdrawal.g.dart';

/// addWithdrawal
///
/// Properties:
/// * [username] - username
/// * [amount] - amount
abstract class AddWithdrawal implements Built<AddWithdrawal, AddWithdrawalBuilder> {
    /// username
    @BuiltValueField(wireName: r'username')
    String get username;

    /// amount
    @BuiltValueField(wireName: r'amount')
    double get amount;

    AddWithdrawal._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AddWithdrawalBuilder b) => b;

    factory AddWithdrawal([void updates(AddWithdrawalBuilder b)]) = _$AddWithdrawal;

    @BuiltValueSerializer(custom: true)
    static Serializer<AddWithdrawal> get serializer => _$AddWithdrawalSerializer();
}

class _$AddWithdrawalSerializer implements StructuredSerializer<AddWithdrawal> {
    @override
    final Iterable<Type> types = const [AddWithdrawal, _$AddWithdrawal];

    @override
    final String wireName = r'AddWithdrawal';

    @override
    Iterable<Object?> serialize(Serializers serializers, AddWithdrawal object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'username')
            ..add(serializers.serialize(object.username,
                specifiedType: const FullType(String)));
        result
            ..add(r'amount')
            ..add(serializers.serialize(object.amount,
                specifiedType: const FullType(double)));
        return result;
    }

    @override
    AddWithdrawal deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AddWithdrawalBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'username':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.username = valueDes;
                    break;
                case r'amount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.amount = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

