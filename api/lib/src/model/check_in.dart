//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/check_in_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_in.g.dart';

/// Input check in
///
/// Properties:
/// * [data] 
abstract class CheckIn implements Built<CheckIn, CheckInBuilder> {
    @BuiltValueField(wireName: r'data')
    BuiltList<CheckInData> get data;

    CheckIn._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CheckInBuilder b) => b;

    factory CheckIn([void updates(CheckInBuilder b)]) = _$CheckIn;

    @BuiltValueSerializer(custom: true)
    static Serializer<CheckIn> get serializer => _$CheckInSerializer();
}

class _$CheckInSerializer implements StructuredSerializer<CheckIn> {
    @override
    final Iterable<Type> types = const [CheckIn, _$CheckIn];

    @override
    final String wireName = r'CheckIn';

    @override
    Iterable<Object?> serialize(Serializers serializers, CheckIn object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'data')
            ..add(serializers.serialize(object.data,
                specifiedType: const FullType(BuiltList, [FullType(CheckInData)])));
        return result;
    }

    @override
    CheckIn deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CheckInBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CheckInData)])) as BuiltList<CheckInData>;
                    result.data.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

