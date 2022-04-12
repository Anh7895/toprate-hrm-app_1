//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_wrong_timekeeping.g.dart';

/// AddWrongTimekeeping
///
/// Properties:
/// * [date] 
/// * [hour] 
/// * [coefficientPayId] 
abstract class AddWrongTimekeeping implements Built<AddWrongTimekeeping, AddWrongTimekeepingBuilder> {
    @BuiltValueField(wireName: r'date')
    String? get date;

    @BuiltValueField(wireName: r'hour')
    double? get hour;

    @BuiltValueField(wireName: r'coefficient_pay_id')
    int? get coefficientPayId;

    AddWrongTimekeeping._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AddWrongTimekeepingBuilder b) => b;

    factory AddWrongTimekeeping([void updates(AddWrongTimekeepingBuilder b)]) = _$AddWrongTimekeeping;

    @BuiltValueSerializer(custom: true)
    static Serializer<AddWrongTimekeeping> get serializer => _$AddWrongTimekeepingSerializer();
}

class _$AddWrongTimekeepingSerializer implements StructuredSerializer<AddWrongTimekeeping> {
    @override
    final Iterable<Type> types = const [AddWrongTimekeeping, _$AddWrongTimekeeping];

    @override
    final String wireName = r'AddWrongTimekeeping';

    @override
    Iterable<Object?> serialize(Serializers serializers, AddWrongTimekeeping object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
        if (object.coefficientPayId != null) {
            result
                ..add(r'coefficient_pay_id')
                ..add(serializers.serialize(object.coefficientPayId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    AddWrongTimekeeping deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AddWrongTimekeepingBuilder();

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
                case r'hour':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.hour = valueDes;
                    break;
                case r'coefficient_pay_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.coefficientPayId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

