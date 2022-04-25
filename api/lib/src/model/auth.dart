//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth.g.dart';

/// Authentication
///
/// Properties:
/// * [accessToken] 
abstract class Auth implements Built<Auth, AuthBuilder> {
    @BuiltValueField(wireName: r'access_token')
    String get accessToken;

    Auth._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AuthBuilder b) => b;

    factory Auth([void updates(AuthBuilder b)]) = _$Auth;

    @BuiltValueSerializer(custom: true)
    static Serializer<Auth> get serializer => _$AuthSerializer();
}

class _$AuthSerializer implements StructuredSerializer<Auth> {
    @override
    final Iterable<Type> types = const [Auth, _$Auth];

    @override
    final String wireName = r'Auth';

    @override
    Iterable<Object?> serialize(Serializers serializers, Auth object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'access_token')
            ..add(serializers.serialize(object.accessToken,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    Auth deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AuthBuilder();

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
            }
        }
        return result.build();
    }
}

