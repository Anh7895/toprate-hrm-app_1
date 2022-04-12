//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'labor_contract.g.dart';

/// Domains\\User\\Models\\LaborContract
///
/// Properties:
/// * [id] 
/// * [number] 
/// * [link] 
/// * [status] 
/// * [reason] 
/// * [userId] 
/// * [companyId] 
/// * [cancelAt] 
abstract class LaborContract implements Built<LaborContract, LaborContractBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'number')
    String? get number;

    @BuiltValueField(wireName: r'link')
    String? get link;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'reason')
    String? get reason;

    @BuiltValueField(wireName: r'user_id')
    int? get userId;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    @BuiltValueField(wireName: r'cancel_at')
    String? get cancelAt;

    LaborContract._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(LaborContractBuilder b) => b;

    factory LaborContract([void updates(LaborContractBuilder b)]) = _$LaborContract;

    @BuiltValueSerializer(custom: true)
    static Serializer<LaborContract> get serializer => _$LaborContractSerializer();
}

class _$LaborContractSerializer implements StructuredSerializer<LaborContract> {
    @override
    final Iterable<Type> types = const [LaborContract, _$LaborContract];

    @override
    final String wireName = r'LaborContract';

    @override
    Iterable<Object?> serialize(Serializers serializers, LaborContract object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.number != null) {
            result
                ..add(r'number')
                ..add(serializers.serialize(object.number,
                    specifiedType: const FullType(String)));
        }
        if (object.link != null) {
            result
                ..add(r'link')
                ..add(serializers.serialize(object.link,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.reason != null) {
            result
                ..add(r'reason')
                ..add(serializers.serialize(object.reason,
                    specifiedType: const FullType(String)));
        }
        if (object.userId != null) {
            result
                ..add(r'user_id')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(int)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        if (object.cancelAt != null) {
            result
                ..add(r'cancel_at')
                ..add(serializers.serialize(object.cancelAt,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    LaborContract deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LaborContractBuilder();

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
                case r'number':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.number = valueDes;
                    break;
                case r'link':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.link = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'reason':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.reason = valueDes;
                    break;
                case r'user_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.userId = valueDes;
                    break;
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
                case r'cancel_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.cancelAt = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

