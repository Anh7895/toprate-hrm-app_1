//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'c_send.g.dart';

/// CSend
///
/// Properties:
/// * [id] 
/// * [status] 
/// * [isRead] 
/// * [title] 
/// * [content] 
/// * [receiveDate] 
abstract class CSend implements Built<CSend, CSendBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'is_read')
    bool? get isRead;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'receive_date')
    String? get receiveDate;

    CSend._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CSendBuilder b) => b;

    factory CSend([void updates(CSendBuilder b)]) = _$CSend;

    @BuiltValueSerializer(custom: true)
    static Serializer<CSend> get serializer => _$CSendSerializer();
}

class _$CSendSerializer implements StructuredSerializer<CSend> {
    @override
    final Iterable<Type> types = const [CSend, _$CSend];

    @override
    final String wireName = r'CSend';

    @override
    Iterable<Object?> serialize(Serializers serializers, CSend object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
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
        if (object.receiveDate != null) {
            result
                ..add(r'receive_date')
                ..add(serializers.serialize(object.receiveDate,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CSend deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CSendBuilder();

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
                case r'receive_date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.receiveDate = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

