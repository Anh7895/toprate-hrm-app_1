//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'c_otp.g.dart';

/// COtp
///
/// Properties:
/// * [expiresIn] 
/// * [code] 
abstract class COtp implements Built<COtp, COtpBuilder> {
    @BuiltValueField(wireName: r'expires_in')
    num? get expiresIn;

    @BuiltValueField(wireName: r'code')
    num? get code;

    COtp._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(COtpBuilder b) => b;

    factory COtp([void updates(COtpBuilder b)]) = _$COtp;

    @BuiltValueSerializer(custom: true)
    static Serializer<COtp> get serializer => _$COtpSerializer();
}

class _$COtpSerializer implements StructuredSerializer<COtp> {
    @override
    final Iterable<Type> types = const [COtp, _$COtp];

    @override
    final String wireName = r'COtp';

    @override
    Iterable<Object?> serialize(Serializers serializers, COtp object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.expiresIn != null) {
            result
                ..add(r'expires_in')
                ..add(serializers.serialize(object.expiresIn,
                    specifiedType: const FullType(num)));
        }
        if (object.code != null) {
            result
                ..add(r'code')
                ..add(serializers.serialize(object.code,
                    specifiedType: const FullType(num)));
        }
        return result;
    }

    @override
    COtp deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = COtpBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'expires_in':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.expiresIn = valueDes;
                    break;
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.code = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

