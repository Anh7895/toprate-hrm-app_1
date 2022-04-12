//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_payroll_mistakes.g.dart';

/// addPayrollMistakes
///
/// Properties:
/// * [userId] - user_id
/// * [payrollMistakeType] - payroll_mistake_type
/// * [exAmountMoney] - ex_amount_money
/// * [content] - content
abstract class AddPayrollMistakes implements Built<AddPayrollMistakes, AddPayrollMistakesBuilder> {
    /// user_id
    @BuiltValueField(wireName: r'user_id')
    int get userId;

    /// payroll_mistake_type
    @BuiltValueField(wireName: r'payroll_mistake_type')
    String get payrollMistakeType;

    /// ex_amount_money
    @BuiltValueField(wireName: r'ex_amount_money')
    double get exAmountMoney;

    /// content
    @BuiltValueField(wireName: r'content')
    String? get content;

    AddPayrollMistakes._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AddPayrollMistakesBuilder b) => b;

    factory AddPayrollMistakes([void updates(AddPayrollMistakesBuilder b)]) = _$AddPayrollMistakes;

    @BuiltValueSerializer(custom: true)
    static Serializer<AddPayrollMistakes> get serializer => _$AddPayrollMistakesSerializer();
}

class _$AddPayrollMistakesSerializer implements StructuredSerializer<AddPayrollMistakes> {
    @override
    final Iterable<Type> types = const [AddPayrollMistakes, _$AddPayrollMistakes];

    @override
    final String wireName = r'AddPayrollMistakes';

    @override
    Iterable<Object?> serialize(Serializers serializers, AddPayrollMistakes object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'user_id')
            ..add(serializers.serialize(object.userId,
                specifiedType: const FullType(int)));
        result
            ..add(r'payroll_mistake_type')
            ..add(serializers.serialize(object.payrollMistakeType,
                specifiedType: const FullType(String)));
        result
            ..add(r'ex_amount_money')
            ..add(serializers.serialize(object.exAmountMoney,
                specifiedType: const FullType(double)));
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AddPayrollMistakes deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AddPayrollMistakesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
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
            }
        }
        return result.build();
    }
}

