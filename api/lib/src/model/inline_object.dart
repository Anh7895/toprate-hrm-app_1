//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object.g.dart';

/// InlineObject
///
/// Properties:
/// * [s3Url] - Url import salary in s3
/// * [companyId] - Company id
abstract class InlineObject implements Built<InlineObject, InlineObjectBuilder> {
    /// Url import salary in s3
    @BuiltValueField(wireName: r's3_url')
    String? get s3Url;

    /// Company id
    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    InlineObject._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(InlineObjectBuilder b) => b;

    factory InlineObject([void updates(InlineObjectBuilder b)]) = _$InlineObject;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineObject> get serializer => _$InlineObjectSerializer();
}

class _$InlineObjectSerializer implements StructuredSerializer<InlineObject> {
    @override
    final Iterable<Type> types = const [InlineObject, _$InlineObject];

    @override
    final String wireName = r'InlineObject';

    @override
    Iterable<Object?> serialize(Serializers serializers, InlineObject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.s3Url != null) {
            result
                ..add(r's3_url')
                ..add(serializers.serialize(object.s3Url,
                    specifiedType: const FullType(String)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    InlineObject deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineObjectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r's3_url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.s3Url = valueDes;
                    break;
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

