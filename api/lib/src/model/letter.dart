//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/company.dart';
import 'package:openapi/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'letter.g.dart';

/// Domains\\Letter\\Models\\Letter
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [content] 
/// * [fromDate] 
/// * [toDate] 
/// * [status] 
/// * [companyId] 
/// * [userId] 
/// * [createdAt] 
/// * [company] 
/// * [user] 
abstract class Letter implements Built<Letter, LetterBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'from_date')
    String? get fromDate;

    @BuiltValueField(wireName: r'to_date')
    String? get toDate;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    @BuiltValueField(wireName: r'user_id')
    int? get userId;

    @BuiltValueField(wireName: r'created_at')
    String? get createdAt;

    @BuiltValueField(wireName: r'company')
    BuiltList<Company>? get company;

    @BuiltValueField(wireName: r'user')
    BuiltList<User>? get user;

    Letter._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(LetterBuilder b) => b;

    factory Letter([void updates(LetterBuilder b)]) = _$Letter;

    @BuiltValueSerializer(custom: true)
    static Serializer<Letter> get serializer => _$LetterSerializer();
}

class _$LetterSerializer implements StructuredSerializer<Letter> {
    @override
    final Iterable<Type> types = const [Letter, _$Letter];

    @override
    final String wireName = r'Letter';

    @override
    Iterable<Object?> serialize(Serializers serializers, Letter object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(String)));
        }
        if (object.fromDate != null) {
            result
                ..add(r'from_date')
                ..add(serializers.serialize(object.fromDate,
                    specifiedType: const FullType(String)));
        }
        if (object.toDate != null) {
            result
                ..add(r'to_date')
                ..add(serializers.serialize(object.toDate,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        if (object.userId != null) {
            result
                ..add(r'user_id')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(int)));
        }
        if (object.createdAt != null) {
            result
                ..add(r'created_at')
                ..add(serializers.serialize(object.createdAt,
                    specifiedType: const FullType(String)));
        }
        if (object.company != null) {
            result
                ..add(r'company')
                ..add(serializers.serialize(object.company,
                    specifiedType: const FullType(BuiltList, [FullType(Company)])));
        }
        if (object.user != null) {
            result
                ..add(r'user')
                ..add(serializers.serialize(object.user,
                    specifiedType: const FullType(BuiltList, [FullType(User)])));
        }
        return result;
    }

    @override
    Letter deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LetterBuilder();

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
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.type = valueDes;
                    break;
                case r'content':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.content = valueDes;
                    break;
                case r'from_date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fromDate = valueDes;
                    break;
                case r'to_date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.toDate = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
                case r'user_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.userId = valueDes;
                    break;
                case r'created_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.createdAt = valueDes;
                    break;
                case r'company':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Company)])) as BuiltList<Company>;
                    result.company.replace(valueDes);
                    break;
                case r'user':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(User)])) as BuiltList<User>;
                    result.user.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

