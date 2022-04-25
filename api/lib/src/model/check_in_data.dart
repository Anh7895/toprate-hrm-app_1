//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_in_data.g.dart';

/// CheckInData
///
/// Properties:
/// * [projectId] 
/// * [coefficientPayId] 
/// * [time] 
abstract class CheckInData implements Built<CheckInData, CheckInDataBuilder> {
    @BuiltValueField(wireName: r'project_id')
    String? get projectId;

    @BuiltValueField(wireName: r'coefficient_pay_id')
    String? get coefficientPayId;

    @BuiltValueField(wireName: r'time')
    String? get time;

    CheckInData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CheckInDataBuilder b) => b;

    factory CheckInData([void updates(CheckInDataBuilder b)]) = _$CheckInData;

    @BuiltValueSerializer(custom: true)
    static Serializer<CheckInData> get serializer => _$CheckInDataSerializer();
}

class _$CheckInDataSerializer implements StructuredSerializer<CheckInData> {
    @override
    final Iterable<Type> types = const [CheckInData, _$CheckInData];

    @override
    final String wireName = r'CheckInData';

    @override
    Iterable<Object?> serialize(Serializers serializers, CheckInData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.projectId != null) {
            result
                ..add(r'project_id')
                ..add(serializers.serialize(object.projectId,
                    specifiedType: const FullType(String)));
        }
        if (object.coefficientPayId != null) {
            result
                ..add(r'coefficient_pay_id')
                ..add(serializers.serialize(object.coefficientPayId,
                    specifiedType: const FullType(String)));
        }
        if (object.time != null) {
            result
                ..add(r'time')
                ..add(serializers.serialize(object.time,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CheckInData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CheckInDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'project_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.projectId = valueDes;
                    break;
                case r'coefficient_pay_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.coefficientPayId = valueDes;
                    break;
                case r'time':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.time = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

