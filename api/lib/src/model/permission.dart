//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission.g.dart';

/// Domains\\User\\Models\\Permission
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [guardName] 
/// * [label] 
abstract class Permission implements Built<Permission, PermissionBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'guard_name')
    String? get guardName;

    @BuiltValueField(wireName: r'label')
    String? get label;

    Permission._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PermissionBuilder b) => b;

    factory Permission([void updates(PermissionBuilder b)]) = _$Permission;

    @BuiltValueSerializer(custom: true)
    static Serializer<Permission> get serializer => _$PermissionSerializer();
}

class _$PermissionSerializer implements StructuredSerializer<Permission> {
    @override
    final Iterable<Type> types = const [Permission, _$Permission];

    @override
    final String wireName = r'Permission';

    @override
    Iterable<Object?> serialize(Serializers serializers, Permission object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.guardName != null) {
            result
                ..add(r'guard_name')
                ..add(serializers.serialize(object.guardName,
                    specifiedType: const FullType(String)));
        }
        if (object.label != null) {
            result
                ..add(r'label')
                ..add(serializers.serialize(object.label,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Permission deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PermissionBuilder();

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
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'guard_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.guardName = valueDes;
                    break;
                case r'label':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.label = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

