//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_request_withdrawal.g.dart';

/// ListRequestWithdrawal
///
/// Properties:
/// * [id] 
/// * [companyName] 
/// * [workerName] 
/// * [accountBalance] 
/// * [amountWithdrawal] 
/// * [status] 
abstract class ListRequestWithdrawal implements Built<ListRequestWithdrawal, ListRequestWithdrawalBuilder> {
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

    @BuiltValueField(wireName: r'status')
    String? get status;

    ListRequestWithdrawal._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ListRequestWithdrawalBuilder b) => b;

    factory ListRequestWithdrawal([void updates(ListRequestWithdrawalBuilder b)]) = _$ListRequestWithdrawal;

    @BuiltValueSerializer(custom: true)
    static Serializer<ListRequestWithdrawal> get serializer => _$ListRequestWithdrawalSerializer();
}

class _$ListRequestWithdrawalSerializer implements StructuredSerializer<ListRequestWithdrawal> {
    @override
    final Iterable<Type> types = const [ListRequestWithdrawal, _$ListRequestWithdrawal];

    @override
    final String wireName = r'ListRequestWithdrawal';

    @override
    Iterable<Object?> serialize(Serializers serializers, ListRequestWithdrawal object,
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
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ListRequestWithdrawal deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListRequestWithdrawalBuilder();

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

