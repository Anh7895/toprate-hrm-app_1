//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification.g.dart';

/// Notification
///
/// Properties:
/// * [id] 
/// * [templateId] 
/// * [title] 
/// * [content] 
/// * [dateSend] 
/// * [type] 
/// * [isAllDay] 
/// * [status] 
/// * [createdBy] 
abstract class Notification implements Built<Notification, NotificationBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'template_id')
    int? get templateId;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'date_send')
    String? get dateSend;

    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'is_all_day')
    String? get isAllDay;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'created_by')
    int? get createdBy;

    Notification._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(NotificationBuilder b) => b;

    factory Notification([void updates(NotificationBuilder b)]) = _$Notification;

    @BuiltValueSerializer(custom: true)
    static Serializer<Notification> get serializer => _$NotificationSerializer();
}

class _$NotificationSerializer implements StructuredSerializer<Notification> {
    @override
    final Iterable<Type> types = const [Notification, _$Notification];

    @override
    final String wireName = r'Notification';

    @override
    Iterable<Object?> serialize(Serializers serializers, Notification object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.templateId != null) {
            result
                ..add(r'template_id')
                ..add(serializers.serialize(object.templateId,
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
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.isAllDay != null) {
            result
                ..add(r'is_all_day')
                ..add(serializers.serialize(object.isAllDay,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.createdBy != null) {
            result
                ..add(r'created_by')
                ..add(serializers.serialize(object.createdBy,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    Notification deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NotificationBuilder();

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
                case r'template_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.templateId = valueDes;
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
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.type = valueDes;
                    break;
                case r'is_all_day':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.isAllDay = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'created_by':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.createdBy = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

