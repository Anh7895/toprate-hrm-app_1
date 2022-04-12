//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'template.g.dart';

/// Domains\\Template\\Models\\Template
///
/// Properties:
/// * [name] 
/// * [subject] 
/// * [content] 
/// * [type] 
/// * [method] 
/// * [status] 
abstract class Template implements Built<Template, TemplateBuilder> {
    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'subject')
    String? get subject;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'method')
    String? get method;

    @BuiltValueField(wireName: r'status')
    String? get status;

    Template._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TemplateBuilder b) => b;

    factory Template([void updates(TemplateBuilder b)]) = _$Template;

    @BuiltValueSerializer(custom: true)
    static Serializer<Template> get serializer => _$TemplateSerializer();
}

class _$TemplateSerializer implements StructuredSerializer<Template> {
    @override
    final Iterable<Type> types = const [Template, _$Template];

    @override
    final String wireName = r'Template';

    @override
    Iterable<Object?> serialize(Serializers serializers, Template object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.subject != null) {
            result
                ..add(r'subject')
                ..add(serializers.serialize(object.subject,
                    specifiedType: const FullType(String)));
        }
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(String)));
        }
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.method != null) {
            result
                ..add(r'method')
                ..add(serializers.serialize(object.method,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Template deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TemplateBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'subject':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.subject = valueDes;
                    break;
                case r'content':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.content = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.type = valueDes;
                    break;
                case r'method':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.method = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

