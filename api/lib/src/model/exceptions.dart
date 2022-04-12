//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exceptions.g.dart';

/// Exceptions
///
/// Properties:
/// * [messages] 
/// * [message] 
abstract class Exceptions implements Built<Exceptions, ExceptionsBuilder> {
    @BuiltValueField(wireName: r'messages')
    JsonObject? get messages;

    @BuiltValueField(wireName: r'message')
    String? get message;

    Exceptions._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ExceptionsBuilder b) => b;

    factory Exceptions([void updates(ExceptionsBuilder b)]) = _$Exceptions;

    @BuiltValueSerializer(custom: true)
    static Serializer<Exceptions> get serializer => _$ExceptionsSerializer();
}

class _$ExceptionsSerializer implements StructuredSerializer<Exceptions> {
    @override
    final Iterable<Type> types = const [Exceptions, _$Exceptions];

    @override
    final String wireName = r'Exceptions';

    @override
    Iterable<Object?> serialize(Serializers serializers, Exceptions object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.messages != null) {
            result
                ..add(r'messages')
                ..add(serializers.serialize(object.messages,
                    specifiedType: const FullType(JsonObject)));
        }
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Exceptions deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ExceptionsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'messages':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(JsonObject)) as JsonObject;
                    result.messages = valueDes;
                    break;
                case r'message':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.message = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

