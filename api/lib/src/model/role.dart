//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/permission.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role.g.dart';

/// Domains\\User\\Models\\Role
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [guardName] 
/// * [status] 
/// * [description] 
/// * [permissions] 
abstract class Role implements Built<Role, RoleBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'guard_name')
    String? get guardName;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'permissions')
    BuiltList<Permission>? get permissions;

    Role._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RoleBuilder b) => b;

    factory Role([void updates(RoleBuilder b)]) = _$Role;

    @BuiltValueSerializer(custom: true)
    static Serializer<Role> get serializer => _$RoleSerializer();
}

class _$RoleSerializer implements StructuredSerializer<Role> {
    @override
    final Iterable<Type> types = const [Role, _$Role];

    @override
    final String wireName = r'Role';

    @override
    Iterable<Object?> serialize(Serializers serializers, Role object,
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
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.permissions != null) {
            result
                ..add(r'permissions')
                ..add(serializers.serialize(object.permissions,
                    specifiedType: const FullType(BuiltList, [FullType(Permission)])));
        }
        return result;
    }

    @override
    Role deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RoleBuilder();

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
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'permissions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Permission)])) as BuiltList<Permission>;
                    result.permissions.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

