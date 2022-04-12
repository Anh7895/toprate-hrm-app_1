//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/s3_auth_token_package.dart';
import 'package:openapi/src/model/s3_auth_token_credentials.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 's3_auth_token.g.dart';

/// S3AuthToken
///
/// Properties:
/// * [status] 
/// * [credentials] 
/// * [package] 
abstract class S3AuthToken implements Built<S3AuthToken, S3AuthTokenBuilder> {
    @BuiltValueField(wireName: r'status')
    int? get status;

    @BuiltValueField(wireName: r'credentials')
    S3AuthTokenCredentials? get credentials;

    @BuiltValueField(wireName: r'package')
    S3AuthTokenPackage? get package;

    S3AuthToken._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(S3AuthTokenBuilder b) => b;

    factory S3AuthToken([void updates(S3AuthTokenBuilder b)]) = _$S3AuthToken;

    @BuiltValueSerializer(custom: true)
    static Serializer<S3AuthToken> get serializer => _$S3AuthTokenSerializer();
}

class _$S3AuthTokenSerializer implements StructuredSerializer<S3AuthToken> {
    @override
    final Iterable<Type> types = const [S3AuthToken, _$S3AuthToken];

    @override
    final String wireName = r'S3AuthToken';

    @override
    Iterable<Object?> serialize(Serializers serializers, S3AuthToken object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(int)));
        }
        if (object.credentials != null) {
            result
                ..add(r'credentials')
                ..add(serializers.serialize(object.credentials,
                    specifiedType: const FullType(S3AuthTokenCredentials)));
        }
        if (object.package != null) {
            result
                ..add(r'package')
                ..add(serializers.serialize(object.package,
                    specifiedType: const FullType(S3AuthTokenPackage)));
        }
        return result;
    }

    @override
    S3AuthToken deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = S3AuthTokenBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.status = valueDes;
                    break;
                case r'credentials':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(S3AuthTokenCredentials)) as S3AuthTokenCredentials;
                    result.credentials.replace(valueDes);
                    break;
                case r'package':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(S3AuthTokenPackage)) as S3AuthTokenPackage;
                    result.package.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

