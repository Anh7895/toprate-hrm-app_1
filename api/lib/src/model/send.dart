//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send.g.dart';

/// Domains\\Send\\Models\\Send
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [content] 
/// * [dateSend] 
/// * [dateAt] 
/// * [readAt] 
/// * [status] 
/// * [isRead] 
/// * [receiverId] 
abstract class Send implements Built<Send, SendBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'date_send')
    String? get dateSend;

    @BuiltValueField(wireName: r'date_at')
    String? get dateAt;

    @BuiltValueField(wireName: r'read_at')
    String? get readAt;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'is_read')
    bool? get isRead;

    @BuiltValueField(wireName: r'receiver_id')
    int? get receiverId;

    Send._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SendBuilder b) => b;

    factory Send([void updates(SendBuilder b)]) = _$Send;

    @BuiltValueSerializer(custom: true)
    static Serializer<Send> get serializer => _$SendSerializer();
}

class _$SendSerializer implements StructuredSerializer<Send> {
    @override
    final Iterable<Type> types = const [Send, _$Send];

    @override
    final String wireName = r'Send';

    @override
    Iterable<Object?> serialize(Serializers serializers, Send object,
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
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(String)));
        }
        if (object.dateSend != null) {
            result
                ..add(r'date_send')
                ..add(serializers.serialize(object.dateSend,
                    specifiedType: const FullType(String)));
        }
        if (object.dateAt != null) {
            result
                ..add(r'date_at')
                ..add(serializers.serialize(object.dateAt,
                    specifiedType: const FullType(String)));
        }
        if (object.readAt != null) {
            result
                ..add(r'read_at')
                ..add(serializers.serialize(object.readAt,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.isRead != null) {
            result
                ..add(r'is_read')
                ..add(serializers.serialize(object.isRead,
                    specifiedType: const FullType(bool)));
        }
        if (object.receiverId != null) {
            result
                ..add(r'receiver_id')
                ..add(serializers.serialize(object.receiverId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    Send deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SendBuilder();

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
                case r'content':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.content = valueDes;
                    break;
                case r'date_send':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.dateSend = valueDes;
                    break;
                case r'date_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.dateAt = valueDes;
                    break;
                case r'read_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.readAt = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'is_read':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.isRead = valueDes;
                    break;
                case r'receiver_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.receiverId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

