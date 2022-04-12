//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 's3_auth_token_package.g.dart';

/// S3AuthTokenPackage
///
/// Properties:
/// * [region] 
/// * [bucket] 
abstract class S3AuthTokenPackage implements Built<S3AuthTokenPackage, S3AuthTokenPackageBuilder> {
    @BuiltValueField(wireName: r'region')
    String? get region;

    @BuiltValueField(wireName: r'bucket')
    String? get bucket;

    S3AuthTokenPackage._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(S3AuthTokenPackageBuilder b) => b;

    factory S3AuthTokenPackage([void updates(S3AuthTokenPackageBuilder b)]) = _$S3AuthTokenPackage;

    @BuiltValueSerializer(custom: true)
    static Serializer<S3AuthTokenPackage> get serializer => _$S3AuthTokenPackageSerializer();
}

class _$S3AuthTokenPackageSerializer implements StructuredSerializer<S3AuthTokenPackage> {
    @override
    final Iterable<Type> types = const [S3AuthTokenPackage, _$S3AuthTokenPackage];

    @override
    final String wireName = r'S3AuthTokenPackage';

    @override
    Iterable<Object?> serialize(Serializers serializers, S3AuthTokenPackage object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.region != null) {
            result
                ..add(r'region')
                ..add(serializers.serialize(object.region,
                    specifiedType: const FullType(String)));
        }
        if (object.bucket != null) {
            result
                ..add(r'bucket')
                ..add(serializers.serialize(object.bucket,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    S3AuthTokenPackage deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = S3AuthTokenPackageBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'region':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.region = valueDes;
                    break;
                case r'bucket':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.bucket = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

