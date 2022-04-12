//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wrong_timekeeping.g.dart';

/// Domains\\Timekeeping\\Models\\WrongTimekeeping
///
/// Properties:
/// * [id] 
/// * [code] 
/// * [date] 
/// * [hour] 
/// * [status] 
/// * [coefficientPayId] 
/// * [companyId] 
abstract class WrongTimekeeping implements Built<WrongTimekeeping, WrongTimekeepingBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'code')
    String? get code;

    @BuiltValueField(wireName: r'date')
    String? get date;

    @BuiltValueField(wireName: r'hour')
    double? get hour;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'coefficient_pay_id')
    int? get coefficientPayId;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    WrongTimekeeping._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(WrongTimekeepingBuilder b) => b;

    factory WrongTimekeeping([void updates(WrongTimekeepingBuilder b)]) = _$WrongTimekeeping;

    @BuiltValueSerializer(custom: true)
    static Serializer<WrongTimekeeping> get serializer => _$WrongTimekeepingSerializer();
}

class _$WrongTimekeepingSerializer implements StructuredSerializer<WrongTimekeeping> {
    @override
    final Iterable<Type> types = const [WrongTimekeeping, _$WrongTimekeeping];

    @override
    final String wireName = r'WrongTimekeeping';

    @override
    Iterable<Object?> serialize(Serializers serializers, WrongTimekeeping object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.code != null) {
            result
                ..add(r'code')
                ..add(serializers.serialize(object.code,
                    specifiedType: const FullType(String)));
        }
        if (object.date != null) {
            result
                ..add(r'date')
                ..add(serializers.serialize(object.date,
                    specifiedType: const FullType(String)));
        }
        if (object.hour != null) {
            result
                ..add(r'hour')
                ..add(serializers.serialize(object.hour,
                    specifiedType: const FullType(double)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.coefficientPayId != null) {
            result
                ..add(r'coefficient_pay_id')
                ..add(serializers.serialize(object.coefficientPayId,
                    specifiedType: const FullType(int)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    WrongTimekeeping deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = WrongTimekeepingBuilder();

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
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.code = valueDes;
                    break;
                case r'date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.date = valueDes;
                    break;
                case r'hour':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.hour = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'coefficient_pay_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.coefficientPayId = valueDes;
                    break;
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

