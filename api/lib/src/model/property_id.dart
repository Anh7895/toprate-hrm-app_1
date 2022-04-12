//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'property_id.g.dart';

/// Property ID
///
/// Properties:
/// * [ids] - Template id
abstract class PropertyID implements Built<PropertyID, PropertyIDBuilder> {
    /// Template id
    @BuiltValueField(wireName: r'ids')
    BuiltList<JsonObject?>? get ids;

    PropertyID._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PropertyIDBuilder b) => b;

    factory PropertyID([void updates(PropertyIDBuilder b)]) = _$PropertyID;

    @BuiltValueSerializer(custom: true)
    static Serializer<PropertyID> get serializer => _$PropertyIDSerializer();
}

class _$PropertyIDSerializer implements StructuredSerializer<PropertyID> {
    @override
    final Iterable<Type> types = const [PropertyID, _$PropertyID];

    @override
    final String wireName = r'PropertyID';

    @override
    Iterable<Object?> serialize(Serializers serializers, PropertyID object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.ids != null) {
            result
                ..add(r'ids')
                ..add(serializers.serialize(object.ids,
                    specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)])));
        }
        return result;
    }

    @override
    PropertyID deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PropertyIDBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'ids':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)])) as BuiltList<JsonObject?>;
                    result.ids.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

