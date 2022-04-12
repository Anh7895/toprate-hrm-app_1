//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_withdrawal.g.dart';

/// ListWithdrawal
///
/// Properties:
/// * [id] 
/// * [companyName] 
/// * [workerName] 
/// * [accountBalance] 
/// * [amountWithdrawal] 
/// * [bankAccount] 
/// * [bankName] 
/// * [processedAt] 
abstract class ListWithdrawal implements Built<ListWithdrawal, ListWithdrawalBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'company_name')
    String? get companyName;

    @BuiltValueField(wireName: r'worker_name')
    String? get workerName;

    @BuiltValueField(wireName: r'account_balance')
    String? get accountBalance;

    @BuiltValueField(wireName: r'amount_withdrawal')
    double? get amountWithdrawal;

    @BuiltValueField(wireName: r'bank_account')
    String? get bankAccount;

    @BuiltValueField(wireName: r'bank_name')
    String? get bankName;

    @BuiltValueField(wireName: r'processed_at')
    String? get processedAt;

    ListWithdrawal._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ListWithdrawalBuilder b) => b;

    factory ListWithdrawal([void updates(ListWithdrawalBuilder b)]) = _$ListWithdrawal;

    @BuiltValueSerializer(custom: true)
    static Serializer<ListWithdrawal> get serializer => _$ListWithdrawalSerializer();
}

class _$ListWithdrawalSerializer implements StructuredSerializer<ListWithdrawal> {
    @override
    final Iterable<Type> types = const [ListWithdrawal, _$ListWithdrawal];

    @override
    final String wireName = r'ListWithdrawal';

    @override
    Iterable<Object?> serialize(Serializers serializers, ListWithdrawal object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.companyName != null) {
            result
                ..add(r'company_name')
                ..add(serializers.serialize(object.companyName,
                    specifiedType: const FullType(String)));
        }
        if (object.workerName != null) {
            result
                ..add(r'worker_name')
                ..add(serializers.serialize(object.workerName,
                    specifiedType: const FullType(String)));
        }
        if (object.accountBalance != null) {
            result
                ..add(r'account_balance')
                ..add(serializers.serialize(object.accountBalance,
                    specifiedType: const FullType(String)));
        }
        if (object.amountWithdrawal != null) {
            result
                ..add(r'amount_withdrawal')
                ..add(serializers.serialize(object.amountWithdrawal,
                    specifiedType: const FullType(double)));
        }
        if (object.bankAccount != null) {
            result
                ..add(r'bank_account')
                ..add(serializers.serialize(object.bankAccount,
                    specifiedType: const FullType(String)));
        }
        if (object.bankName != null) {
            result
                ..add(r'bank_name')
                ..add(serializers.serialize(object.bankName,
                    specifiedType: const FullType(String)));
        }
        if (object.processedAt != null) {
            result
                ..add(r'processed_at')
                ..add(serializers.serialize(object.processedAt,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ListWithdrawal deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListWithdrawalBuilder();

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
                case r'company_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.companyName = valueDes;
                    break;
                case r'worker_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.workerName = valueDes;
                    break;
                case r'account_balance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.accountBalance = valueDes;
                    break;
                case r'amount_withdrawal':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.amountWithdrawal = valueDes;
                    break;
                case r'bank_account':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.bankAccount = valueDes;
                    break;
                case r'bank_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.bankName = valueDes;
                    break;
                case r'processed_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.processedAt = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

