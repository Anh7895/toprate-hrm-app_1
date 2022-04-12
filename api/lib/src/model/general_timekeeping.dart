//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/coefficient_pay.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'general_timekeeping.g.dart';

/// Domains\\Salary\\Models\\GeneralTimekeeping
///
/// Properties:
/// * [id] 
/// * [coefficientPayCode] 
/// * [unit] 
/// * [date] 
/// * [companyId] 
/// * [userId] 
/// * [unitPricePerHour] 
/// * [coefficientPay] 
abstract class GeneralTimekeeping implements Built<GeneralTimekeeping, GeneralTimekeepingBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'coefficient_pay_code')
    String? get coefficientPayCode;

    @BuiltValueField(wireName: r'unit')
    double? get unit;

    @BuiltValueField(wireName: r'date')
    Date? get date;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    @BuiltValueField(wireName: r'user_id')
    int? get userId;

    @BuiltValueField(wireName: r'unit_price_per_hour')
    double? get unitPricePerHour;

    @BuiltValueField(wireName: r'coefficient_pay')
    BuiltList<CoefficientPay>? get coefficientPay;

    GeneralTimekeeping._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GeneralTimekeepingBuilder b) => b;

    factory GeneralTimekeeping([void updates(GeneralTimekeepingBuilder b)]) = _$GeneralTimekeeping;

    @BuiltValueSerializer(custom: true)
    static Serializer<GeneralTimekeeping> get serializer => _$GeneralTimekeepingSerializer();
}

class _$GeneralTimekeepingSerializer implements StructuredSerializer<GeneralTimekeeping> {
    @override
    final Iterable<Type> types = const [GeneralTimekeeping, _$GeneralTimekeeping];

    @override
    final String wireName = r'GeneralTimekeeping';

    @override
    Iterable<Object?> serialize(Serializers serializers, GeneralTimekeeping object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.coefficientPayCode != null) {
            result
                ..add(r'coefficient_pay_code')
                ..add(serializers.serialize(object.coefficientPayCode,
                    specifiedType: const FullType(String)));
        }
        if (object.unit != null) {
            result
                ..add(r'unit')
                ..add(serializers.serialize(object.unit,
                    specifiedType: const FullType(double)));
        }
        if (object.date != null) {
            result
                ..add(r'date')
                ..add(serializers.serialize(object.date,
                    specifiedType: const FullType(Date)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        if (object.userId != null) {
            result
                ..add(r'user_id')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(int)));
        }
        if (object.unitPricePerHour != null) {
            result
                ..add(r'unit_price_per_hour')
                ..add(serializers.serialize(object.unitPricePerHour,
                    specifiedType: const FullType(double)));
        }
        if (object.coefficientPay != null) {
            result
                ..add(r'coefficient_pay')
                ..add(serializers.serialize(object.coefficientPay,
                    specifiedType: const FullType(BuiltList, [FullType(CoefficientPay)])));
        }
        return result;
    }

    @override
    GeneralTimekeeping deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GeneralTimekeepingBuilder();

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
                case r'coefficient_pay_code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.coefficientPayCode = valueDes;
                    break;
                case r'unit':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.unit = valueDes;
                    break;
                case r'date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.date = valueDes;
                    break;
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
                case r'user_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.userId = valueDes;
                    break;
                case r'unit_price_per_hour':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.unitPricePerHour = valueDes;
                    break;
                case r'coefficient_pay':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CoefficientPay)])) as BuiltList<CoefficientPay>;
                    result.coefficientPay.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

