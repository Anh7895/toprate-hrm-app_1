//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logs.g.dart';

/// Domains\\Logs\\Models\\Logs
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [templateId] 
/// * [data] 
/// * [response] 
/// * [dateSend] 
abstract class Logs implements Built<Logs, LogsBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'template_id')
    int? get templateId;

    @BuiltValueField(wireName: r'data')
    String? get data;

    @BuiltValueField(wireName: r'response')
    String? get response;

    @BuiltValueField(wireName: r'date_send')
    String? get dateSend;

    Logs._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(LogsBuilder b) => b;

    factory Logs([void updates(LogsBuilder b)]) = _$Logs;

    @BuiltValueSerializer(custom: true)
    static Serializer<Logs> get serializer => _$LogsSerializer();
}

class _$LogsSerializer implements StructuredSerializer<Logs> {
    @override
    final Iterable<Type> types = const [Logs, _$Logs];

    @override
    final String wireName = r'Logs';

    @override
    Iterable<Object?> serialize(Serializers serializers, Logs object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.templateId != null) {
            result
                ..add(r'template_id')
                ..add(serializers.serialize(object.templateId,
                    specifiedType: const FullType(int)));
        }
        if (object.data != null) {
            result
                ..add(r'data')
                ..add(serializers.serialize(object.data,
                    specifiedType: const FullType(String)));
        }
        if (object.response != null) {
            result
                ..add(r'response')
                ..add(serializers.serialize(object.response,
                    specifiedType: const FullType(String)));
        }
        if (object.dateSend != null) {
            result
                ..add(r'date_send')
                ..add(serializers.serialize(object.dateSend,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Logs deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LogsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'template_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.templateId = valueDes;
                    break;
                case r'data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.data = valueDes;
                    break;
                case r'response':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.response = valueDes;
                    break;
                case r'date_send':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.dateSend = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

