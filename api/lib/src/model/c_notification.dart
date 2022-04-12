//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'c_notification.g.dart';

/// CNotification
///
/// Properties:
/// * [id] 
/// * [dateSend] 
/// * [title] 
/// * [content] 
/// * [companyId] 
/// * [sendSms] 
/// * [sendMobile] 
abstract class CNotification implements Built<CNotification, CNotificationBuilder> {
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

    CNotification._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CNotificationBuilder b) => b;

    factory CNotification([void updates(CNotificationBuilder b)]) = _$CNotification;

    @BuiltValueSerializer(custom: true)
    static Serializer<CNotification> get serializer => _$CNotificationSerializer();
}

class _$CNotificationSerializer implements StructuredSerializer<CNotification> {
    @override
    final Iterable<Type> types = const [CNotification, _$CNotification];

    @override
    final String wireName = r'CNotification';

    @override
    Iterable<Object?> serialize(Serializers serializers, CNotification object,
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
        return result;
    }

    @override
    CNotification deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CNotificationBuilder();

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
            }
        }
        return result.build();
    }
}

