//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'salary_management_transaction_details.g.dart';

/// SalaryManagementTransactionDetails
///
/// Properties:
/// * [date] 
/// * [amount] 
/// * [type] 
/// * [content] 
abstract class SalaryManagementTransactionDetails implements Built<SalaryManagementTransactionDetails, SalaryManagementTransactionDetailsBuilder> {
    @BuiltValueField(wireName: r'date')
    String? get date;

    @BuiltValueField(wireName: r'amount')
    String? get amount;

    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'content')
    String? get content;

    SalaryManagementTransactionDetails._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SalaryManagementTransactionDetailsBuilder b) => b;

    factory SalaryManagementTransactionDetails([void updates(SalaryManagementTransactionDetailsBuilder b)]) = _$SalaryManagementTransactionDetails;

    @BuiltValueSerializer(custom: true)
    static Serializer<SalaryManagementTransactionDetails> get serializer => _$SalaryManagementTransactionDetailsSerializer();
}

class _$SalaryManagementTransactionDetailsSerializer implements StructuredSerializer<SalaryManagementTransactionDetails> {
    @override
    final Iterable<Type> types = const [SalaryManagementTransactionDetails, _$SalaryManagementTransactionDetails];

    @override
    final String wireName = r'SalaryManagementTransactionDetails';

    @override
    Iterable<Object?> serialize(Serializers serializers, SalaryManagementTransactionDetails object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.date != null) {
            result
                ..add(r'date')
                ..add(serializers.serialize(object.date,
                    specifiedType: const FullType(String)));
        }
        if (object.amount != null) {
            result
                ..add(r'amount')
                ..add(serializers.serialize(object.amount,
                    specifiedType: const FullType(String)));
        }
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    SalaryManagementTransactionDetails deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SalaryManagementTransactionDetailsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.date = valueDes;
                    break;
                case r'amount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.amount = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.type = valueDes;
                    break;
                case r'content':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.content = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

