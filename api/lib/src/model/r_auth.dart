//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'r_auth.g.dart';

/// RAuth
///
/// Properties:
/// * [tokenType] 
/// * [accessToken] 
/// * [expiresIn] 
/// * [refreshToken] 
abstract class RAuth implements Built<RAuth, RAuthBuilder> {
    @BuiltValueField(wireName: r'token_type')
    String? get tokenType;

    @BuiltValueField(wireName: r'access_token')
    String? get accessToken;

    @BuiltValueField(wireName: r'expires_in')
    int? get expiresIn;

    @BuiltValueField(wireName: r'refresh_token')
    String? get refreshToken;

    RAuth._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RAuthBuilder b) => b;

    factory RAuth([void updates(RAuthBuilder b)]) = _$RAuth;

    @BuiltValueSerializer(custom: true)
    static Serializer<RAuth> get serializer => _$RAuthSerializer();
}

class _$RAuthSerializer implements StructuredSerializer<RAuth> {
    @override
    final Iterable<Type> types = const [RAuth, _$RAuth];

    @override
    final String wireName = r'RAuth';

    @override
    Iterable<Object?> serialize(Serializers serializers, RAuth object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.tokenType != null) {
            result
                ..add(r'token_type')
                ..add(serializers.serialize(object.tokenType,
                    specifiedType: const FullType(String)));
        }
        if (object.accessToken != null) {
            result
                ..add(r'access_token')
                ..add(serializers.serialize(object.accessToken,
                    specifiedType: const FullType(String)));
        }
        if (object.expiresIn != null) {
            result
                ..add(r'expires_in')
                ..add(serializers.serialize(object.expiresIn,
                    specifiedType: const FullType(int)));
        }
        if (object.refreshToken != null) {
            result
                ..add(r'refresh_token')
                ..add(serializers.serialize(object.refreshToken,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    RAuth deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RAuthBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'token_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.tokenType = valueDes;
                    break;
                case r'access_token':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.accessToken = valueDes;
                    break;
                case r'expires_in':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.expiresIn = valueDes;
                    break;
                case r'refresh_token':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.refreshToken = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

