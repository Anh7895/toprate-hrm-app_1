//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/c_company.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification.g.dart';

/// Domains\\Notification\\Models\\Notification
///
/// Properties:
/// * [id] 
/// * [dateSend] 
/// * [title] 
/// * [content] 
/// * [companyId] 
/// * [sendSms] 
/// * [sendMobile] 
/// * [createdBy] 
/// * [company] 
abstract class Notification implements Built<Notification, NotificationBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'date_send')
    String? get dateSend;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    @BuiltValueField(wireName: r'send_sms')
    bool? get sendSms;

    @BuiltValueField(wireName: r'send_mobile')
    bool? get sendMobile;

    @BuiltValueField(wireName: r'created_by')
    int? get createdBy;

    @BuiltValueField(wireName: r'company')
    CCompany? get company;

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
        if (object.dateSend != null) {
            result
                ..add(r'date_send')
                ..add(serializers.serialize(object.dateSend,
                    specifiedType: const FullType(String)));
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
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        if (object.sendSms != null) {
            result
                ..add(r'send_sms')
                ..add(serializers.serialize(object.sendSms,
                    specifiedType: const FullType(bool)));
        }
        if (object.sendMobile != null) {
            result
                ..add(r'send_mobile')
                ..add(serializers.serialize(object.sendMobile,
                    specifiedType: const FullType(bool)));
        }
        if (object.createdBy != null) {
            result
                ..add(r'created_by')
                ..add(serializers.serialize(object.createdBy,
                    specifiedType: const FullType(int)));
        }
        if (object.company != null) {
            result
                ..add(r'company')
                ..add(serializers.serialize(object.company,
                    specifiedType: const FullType(CCompany)));
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
                case r'date_send':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.dateSend = valueDes;
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
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
                case r'send_sms':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.sendSms = valueDes;
                    break;
                case r'send_mobile':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.sendMobile = valueDes;
                    break;
                case r'created_by':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.createdBy = valueDes;
                    break;
                case r'company':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(CCompany)) as CCompany;
                    result.company.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

