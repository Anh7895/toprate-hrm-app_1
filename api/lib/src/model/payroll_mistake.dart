//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payroll_mistake.g.dart';

/// Domains\\PayrollMistake\\Models\\PayrollMistake
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [payrollMistakeType] 
/// * [exAmountMoney] 
/// * [content] 
/// * [status] 
abstract class PayrollMistake implements Built<PayrollMistake, PayrollMistakeBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'user_id')
    int? get userId;

    @BuiltValueField(wireName: r'payroll_mistake_type')
    String? get payrollMistakeType;

    @BuiltValueField(wireName: r'ex_amount_money')
    double? get exAmountMoney;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'status')
    String? get status;

    PayrollMistake._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PayrollMistakeBuilder b) => b;

    factory PayrollMistake([void updates(PayrollMistakeBuilder b)]) = _$PayrollMistake;

    @BuiltValueSerializer(custom: true)
    static Serializer<PayrollMistake> get serializer => _$PayrollMistakeSerializer();
}

class _$PayrollMistakeSerializer implements StructuredSerializer<PayrollMistake> {
    @override
    final Iterable<Type> types = const [PayrollMistake, _$PayrollMistake];

    @override
    final String wireName = r'PayrollMistake';

    @override
    Iterable<Object?> serialize(Serializers serializers, PayrollMistake object,
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
        if (object.payrollMistakeType != null) {
            result
                ..add(r'payroll_mistake_type')
                ..add(serializers.serialize(object.payrollMistakeType,
                    specifiedType: const FullType(String)));
        }
        if (object.exAmountMoney != null) {
            result
                ..add(r'ex_amount_money')
                ..add(serializers.serialize(object.exAmountMoney,
                    specifiedType: const FullType(double)));
        }
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
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
    PayrollMistake deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PayrollMistakeBuilder();

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
                case r'payroll_mistake_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.payrollMistakeType = valueDes;
                    break;
                case r'ex_amount_money':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.exAmountMoney = valueDes;
                    break;
                case r'content':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.content = valueDes;
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

