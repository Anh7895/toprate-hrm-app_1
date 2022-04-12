//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'property_uuid.g.dart';

/// Property Uuid
///
/// Properties:
/// * [uuids] - Template uuids
abstract class PropertyUuid implements Built<PropertyUuid, PropertyUuidBuilder> {
    /// Template uuids
    @BuiltValueField(wireName: r'uuids')
    BuiltList<JsonObject?> get uuids;

    PropertyUuid._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PropertyUuidBuilder b) => b;

    factory PropertyUuid([void updates(PropertyUuidBuilder b)]) = _$PropertyUuid;

    @BuiltValueSerializer(custom: true)
    static Serializer<PropertyUuid> get serializer => _$PropertyUuidSerializer();
}

class _$PropertyUuidSerializer implements StructuredSerializer<PropertyUuid> {
    @override
    final Iterable<Type> types = const [PropertyUuid, _$PropertyUuid];

    @override
    final String wireName = r'PropertyUuid';

    @override
    Iterable<Object?> serialize(Serializers serializers, PropertyUuid object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'uuids')
            ..add(serializers.serialize(object.uuids,
                specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)])));
        return result;
    }

    @override
    PropertyUuid deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PropertyUuidBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'uuids':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)])) as BuiltList<JsonObject?>;
                    result.uuids.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

