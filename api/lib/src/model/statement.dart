//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'statement.g.dart';

/// Domains\\User\\Models\\Statement
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [companyId] 
/// * [closingBalance] 
/// * [dateFinalSettlement] 
abstract class Statement implements Built<Statement, StatementBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'user_id')
    int? get userId;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    @BuiltValueField(wireName: r'closing_balance')
    String? get closingBalance;

    @BuiltValueField(wireName: r'date_final_settlement')
    String? get dateFinalSettlement;

    Statement._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(StatementBuilder b) => b;

    factory Statement([void updates(StatementBuilder b)]) = _$Statement;

    @BuiltValueSerializer(custom: true)
    static Serializer<Statement> get serializer => _$StatementSerializer();
}

class _$StatementSerializer implements StructuredSerializer<Statement> {
    @override
    final Iterable<Type> types = const [Statement, _$Statement];

    @override
    final String wireName = r'Statement';

    @override
    Iterable<Object?> serialize(Serializers serializers, Statement object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
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
        if (object.closingBalance != null) {
            result
                ..add(r'closing_balance')
                ..add(serializers.serialize(object.closingBalance,
                    specifiedType: const FullType(String)));
        }
        if (object.dateFinalSettlement != null) {
            result
                ..add(r'date_final_settlement')
                ..add(serializers.serialize(object.dateFinalSettlement,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Statement deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = StatementBuilder();

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
                case r'closing_balance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.closingBalance = valueDes;
                    break;
                case r'date_final_settlement':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.dateFinalSettlement = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

