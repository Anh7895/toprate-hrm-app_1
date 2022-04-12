//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_payroll_mistakes.g.dart';

/// ListPayrollMistakes
///
/// Properties:
/// * [id] 
/// * [companyName] 
/// * [fullName] 
/// * [phone] 
/// * [exAmountMoney] 
/// * [content] 
/// * [status] 
/// * [payrollMistakeType] 
/// * [createdAt] 
abstract class ListPayrollMistakes implements Built<ListPayrollMistakes, ListPayrollMistakesBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'company_name')
    int? get companyName;

    @BuiltValueField(wireName: r'full_name')
    String? get fullName;

    @BuiltValueField(wireName: r'phone')
    String? get phone;

    @BuiltValueField(wireName: r'ex_amount_money')
    double? get exAmountMoney;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'payroll_mistake_type')
    String? get payrollMistakeType;

    @BuiltValueField(wireName: r'created_at')
    String? get createdAt;

    ListPayrollMistakes._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ListPayrollMistakesBuilder b) => b;

    factory ListPayrollMistakes([void updates(ListPayrollMistakesBuilder b)]) = _$ListPayrollMistakes;

    @BuiltValueSerializer(custom: true)
    static Serializer<ListPayrollMistakes> get serializer => _$ListPayrollMistakesSerializer();
}

class _$ListPayrollMistakesSerializer implements StructuredSerializer<ListPayrollMistakes> {
    @override
    final Iterable<Type> types = const [ListPayrollMistakes, _$ListPayrollMistakes];

    @override
    final String wireName = r'ListPayrollMistakes';

    @override
    Iterable<Object?> serialize(Serializers serializers, ListPayrollMistakes object,
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
                    specifiedType: const FullType(int)));
        }
        if (object.fullName != null) {
            result
                ..add(r'full_name')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType(String)));
        }
        if (object.phone != null) {
            result
                ..add(r'phone')
                ..add(serializers.serialize(object.phone,
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
        if (object.payrollMistakeType != null) {
            result
                ..add(r'payroll_mistake_type')
                ..add(serializers.serialize(object.payrollMistakeType,
                    specifiedType: const FullType(String)));
        }
        if (object.createdAt != null) {
            result
                ..add(r'created_at')
                ..add(serializers.serialize(object.createdAt,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ListPayrollMistakes deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListPayrollMistakesBuilder();

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
                        specifiedType: const FullType(int)) as int;
                    result.companyName = valueDes;
                    break;
                case r'full_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fullName = valueDes;
                    break;
                case r'phone':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.phone = valueDes;
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
                case r'payroll_mistake_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.payrollMistakeType = valueDes;
                    break;
                case r'created_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.createdAt = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

