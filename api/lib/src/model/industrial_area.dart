//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'industrial_area.g.dart';

/// Domains\\IndustrialArea\\Models\\IndustrialArea
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [createdBy] 
/// * [deletedAt] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [address] 
abstract class IndustrialArea implements Built<IndustrialArea, IndustrialAreaBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'created_by')
    int? get createdBy;

    @BuiltValueField(wireName: r'deleted_at')
    String? get deletedAt;

    @BuiltValueField(wireName: r'created_at')
    String? get createdAt;

    @BuiltValueField(wireName: r'updated_at')
    String? get updatedAt;

    @BuiltValueField(wireName: r'address')
    String? get address;

    IndustrialArea._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(IndustrialAreaBuilder b) => b;

    factory IndustrialArea([void updates(IndustrialAreaBuilder b)]) = _$IndustrialArea;

    @BuiltValueSerializer(custom: true)
    static Serializer<IndustrialArea> get serializer => _$IndustrialAreaSerializer();
}

class _$IndustrialAreaSerializer implements StructuredSerializer<IndustrialArea> {
    @override
    final Iterable<Type> types = const [IndustrialArea, _$IndustrialArea];

    @override
    final String wireName = r'IndustrialArea';

    @override
    Iterable<Object?> serialize(Serializers serializers, IndustrialArea object,
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
        if (object.createdBy != null) {
            result
                ..add(r'created_by')
                ..add(serializers.serialize(object.createdBy,
                    specifiedType: const FullType(int)));
        }
        if (object.deletedAt != null) {
            result
                ..add(r'deleted_at')
                ..add(serializers.serialize(object.deletedAt,
                    specifiedType: const FullType(String)));
        }
        if (object.createdAt != null) {
            result
                ..add(r'created_at')
                ..add(serializers.serialize(object.createdAt,
                    specifiedType: const FullType(String)));
        }
        if (object.updatedAt != null) {
            result
                ..add(r'updated_at')
                ..add(serializers.serialize(object.updatedAt,
                    specifiedType: const FullType(String)));
        }
        if (object.address != null) {
            result
                ..add(r'address')
                ..add(serializers.serialize(object.address,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    IndustrialArea deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = IndustrialAreaBuilder();

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
                case r'created_by':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.createdBy = valueDes;
                    break;
                case r'deleted_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.deletedAt = valueDes;
                    break;
                case r'created_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.createdAt = valueDes;
                    break;
                case r'updated_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.updatedAt = valueDes;
                    break;
                case r'address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.address = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

