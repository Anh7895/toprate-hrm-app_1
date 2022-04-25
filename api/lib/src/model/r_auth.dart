//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'r_auth.g.dart';

/// RAuth
///
/// Properties:
/// * [accessToken] 
/// * [expiresIn] 
/// * [refreshExpiresIn] 
/// * [refreshToken] 
/// * [tokenType] 
/// * [sessionState] 
/// * [scope] 
abstract class RAuth implements Built<RAuth, RAuthBuilder> {
    @BuiltValueField(wireName: r'access_token')
    String? get accessToken;

    @BuiltValueField(wireName: r'expires_in')
    int? get expiresIn;

    @BuiltValueField(wireName: r'refresh_expires_in')
    int? get refreshExpiresIn;

    @BuiltValueField(wireName: r'refresh_token')
    String? get refreshToken;

    @BuiltValueField(wireName: r'token_type')
    String? get tokenType;

    @BuiltValueField(wireName: r'session_state')
    String? get sessionState;

    @BuiltValueField(wireName: r'scope')
    String? get scope;

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
        if (object.refreshExpiresIn != null) {
            result
                ..add(r'refresh_expires_in')
                ..add(serializers.serialize(object.refreshExpiresIn,
                    specifiedType: const FullType(int)));
        }
        if (object.refreshToken != null) {
            result
                ..add(r'refresh_token')
                ..add(serializers.serialize(object.refreshToken,
                    specifiedType: const FullType(String)));
        }
        if (object.tokenType != null) {
            result
                ..add(r'token_type')
                ..add(serializers.serialize(object.tokenType,
                    specifiedType: const FullType(String)));
        }
        if (object.sessionState != null) {
            result
                ..add(r'session_state')
                ..add(serializers.serialize(object.sessionState,
                    specifiedType: const FullType(String)));
        }
        if (object.scope != null) {
            result
                ..add(r'scope')
                ..add(serializers.serialize(object.scope,
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
                case r'refresh_expires_in':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.refreshExpiresIn = valueDes;
                    break;
                case r'refresh_token':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.refreshToken = valueDes;
                    break;
                case r'token_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.tokenType = valueDes;
                    break;
                case r'session_state':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.sessionState = valueDes;
                    break;
                case r'scope':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.scope = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

