//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 's3_auth_token_credentials.g.dart';

/// S3AuthTokenCredentials
///
/// Properties:
/// * [accessKeyId] 
/// * [secretAccessKey] 
/// * [sessionToken] 
/// * [expiration] 
abstract class S3AuthTokenCredentials implements Built<S3AuthTokenCredentials, S3AuthTokenCredentialsBuilder> {
    @BuiltValueField(wireName: r'AccessKeyId')
    String? get accessKeyId;

    @BuiltValueField(wireName: r'SecretAccessKey')
    String? get secretAccessKey;

    @BuiltValueField(wireName: r'SessionToken')
    String? get sessionToken;

    @BuiltValueField(wireName: r'Expiration')
    String? get expiration;

    S3AuthTokenCredentials._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(S3AuthTokenCredentialsBuilder b) => b;

    factory S3AuthTokenCredentials([void updates(S3AuthTokenCredentialsBuilder b)]) = _$S3AuthTokenCredentials;

    @BuiltValueSerializer(custom: true)
    static Serializer<S3AuthTokenCredentials> get serializer => _$S3AuthTokenCredentialsSerializer();
}

class _$S3AuthTokenCredentialsSerializer implements StructuredSerializer<S3AuthTokenCredentials> {
    @override
    final Iterable<Type> types = const [S3AuthTokenCredentials, _$S3AuthTokenCredentials];

    @override
    final String wireName = r'S3AuthTokenCredentials';

    @override
    Iterable<Object?> serialize(Serializers serializers, S3AuthTokenCredentials object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.accessKeyId != null) {
            result
                ..add(r'AccessKeyId')
                ..add(serializers.serialize(object.accessKeyId,
                    specifiedType: const FullType(String)));
        }
        if (object.secretAccessKey != null) {
            result
                ..add(r'SecretAccessKey')
                ..add(serializers.serialize(object.secretAccessKey,
                    specifiedType: const FullType(String)));
        }
        if (object.sessionToken != null) {
            result
                ..add(r'SessionToken')
                ..add(serializers.serialize(object.sessionToken,
                    specifiedType: const FullType(String)));
        }
        if (object.expiration != null) {
            result
                ..add(r'Expiration')
                ..add(serializers.serialize(object.expiration,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    S3AuthTokenCredentials deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = S3AuthTokenCredentialsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'AccessKeyId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.accessKeyId = valueDes;
                    break;
                case r'SecretAccessKey':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.secretAccessKey = valueDes;
                    break;
                case r'SessionToken':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.sessionToken = valueDes;
                    break;
                case r'Expiration':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.expiration = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

