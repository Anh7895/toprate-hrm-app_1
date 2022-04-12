//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_token.g.dart';

/// Domains\\DeviceToken\\Models\\DeviceToken
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [token] 
/// * [type] 
/// * [deviceId] 
abstract class DeviceToken implements Built<DeviceToken, DeviceTokenBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'user_id')
    int? get userId;

    @BuiltValueField(wireName: r'token')
    String? get token;

    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'device_id')
    String? get deviceId;

    DeviceToken._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(DeviceTokenBuilder b) => b;

    factory DeviceToken([void updates(DeviceTokenBuilder b)]) = _$DeviceToken;

    @BuiltValueSerializer(custom: true)
    static Serializer<DeviceToken> get serializer => _$DeviceTokenSerializer();
}

class _$DeviceTokenSerializer implements StructuredSerializer<DeviceToken> {
    @override
    final Iterable<Type> types = const [DeviceToken, _$DeviceToken];

    @override
    final String wireName = r'DeviceToken';

    @override
    Iterable<Object?> serialize(Serializers serializers, DeviceToken object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.userId != null) {
            result
                ..add(r'user_id')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(int)));
        }
        if (object.token != null) {
            result
                ..add(r'token')
                ..add(serializers.serialize(object.token,
                    specifiedType: const FullType(String)));
        }
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.deviceId != null) {
            result
                ..add(r'device_id')
                ..add(serializers.serialize(object.deviceId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    DeviceToken deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DeviceTokenBuilder();

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
                case r'user_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.userId = valueDes;
                    break;
                case r'token':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.token = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.type = valueDes;
                    break;
                case r'device_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.deviceId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

