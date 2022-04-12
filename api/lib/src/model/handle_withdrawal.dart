//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'handle_withdrawal.g.dart';

/// Handle withdrawals
///
/// Properties:
/// * [id] - Withdrawal id
/// * [status] - Withdrawal status
abstract class HandleWithdrawal implements Built<HandleWithdrawal, HandleWithdrawalBuilder> {
    /// Withdrawal id
    @BuiltValueField(wireName: r'id')
    int get id;

    /// Withdrawal status
    @BuiltValueField(wireName: r'status')
    String get status;

    HandleWithdrawal._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(HandleWithdrawalBuilder b) => b;

    factory HandleWithdrawal([void updates(HandleWithdrawalBuilder b)]) = _$HandleWithdrawal;

    @BuiltValueSerializer(custom: true)
    static Serializer<HandleWithdrawal> get serializer => _$HandleWithdrawalSerializer();
}

class _$HandleWithdrawalSerializer implements StructuredSerializer<HandleWithdrawal> {
    @override
    final Iterable<Type> types = const [HandleWithdrawal, _$HandleWithdrawal];

    @override
    final String wireName = r'HandleWithdrawal';

    @override
    Iterable<Object?> serialize(Serializers serializers, HandleWithdrawal object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(int)));
        result
            ..add(r'status')
            ..add(serializers.serialize(object.status,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    HandleWithdrawal deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = HandleWithdrawalBuilder();

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

