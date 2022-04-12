//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_status.g.dart';

/// Update status wrong timekeeping
///
/// Properties:
/// * [id] - Wrong timekeeping id
abstract class UpdateStatus implements Built<UpdateStatus, UpdateStatusBuilder> {
    /// Wrong timekeeping id
    @BuiltValueField(wireName: r'id')
    int get id;

    UpdateStatus._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UpdateStatusBuilder b) => b;

    factory UpdateStatus([void updates(UpdateStatusBuilder b)]) = _$UpdateStatus;

    @BuiltValueSerializer(custom: true)
    static Serializer<UpdateStatus> get serializer => _$UpdateStatusSerializer();
}

class _$UpdateStatusSerializer implements StructuredSerializer<UpdateStatus> {
    @override
    final Iterable<Type> types = const [UpdateStatus, _$UpdateStatus];

    @override
    final String wireName = r'UpdateStatus';

    @override
    Iterable<Object?> serialize(Serializers serializers, UpdateStatus object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    UpdateStatus deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UpdateStatusBuilder();

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
            }
        }
        return result.build();
    }
}

