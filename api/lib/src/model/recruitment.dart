//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/company.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recruitment.g.dart';

/// Domains\\Recruitment\\Models\\Recruitment
///
/// Properties:
/// * [id] 
/// * [companyId] 
/// * [position] 
/// * [quantity] 
/// * [content] 
/// * [requirement] 
/// * [expirationDate] 
/// * [company] 
abstract class Recruitment implements Built<Recruitment, RecruitmentBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    @BuiltValueField(wireName: r'position')
    String? get position;

    @BuiltValueField(wireName: r'quantity')
    int? get quantity;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'requirement')
    String? get requirement;

    @BuiltValueField(wireName: r'expiration_date')
    String? get expirationDate;

    @BuiltValueField(wireName: r'company')
    Company? get company;

    Recruitment._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RecruitmentBuilder b) => b;

    factory Recruitment([void updates(RecruitmentBuilder b)]) = _$Recruitment;

    @BuiltValueSerializer(custom: true)
    static Serializer<Recruitment> get serializer => _$RecruitmentSerializer();
}

class _$RecruitmentSerializer implements StructuredSerializer<Recruitment> {
    @override
    final Iterable<Type> types = const [Recruitment, _$Recruitment];

    @override
    final String wireName = r'Recruitment';

    @override
    Iterable<Object?> serialize(Serializers serializers, Recruitment object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        if (object.position != null) {
            result
                ..add(r'position')
                ..add(serializers.serialize(object.position,
                    specifiedType: const FullType(String)));
        }
        if (object.quantity != null) {
            result
                ..add(r'quantity')
                ..add(serializers.serialize(object.quantity,
                    specifiedType: const FullType(int)));
        }
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(String)));
        }
        if (object.requirement != null) {
            result
                ..add(r'requirement')
                ..add(serializers.serialize(object.requirement,
                    specifiedType: const FullType(String)));
        }
        if (object.expirationDate != null) {
            result
                ..add(r'expiration_date')
                ..add(serializers.serialize(object.expirationDate,
                    specifiedType: const FullType(String)));
        }
        if (object.company != null) {
            result
                ..add(r'company')
                ..add(serializers.serialize(object.company,
                    specifiedType: const FullType(Company)));
        }
        return result;
    }

    @override
    Recruitment deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RecruitmentBuilder();

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
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
                case r'position':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.position = valueDes;
                    break;
                case r'quantity':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.quantity = valueDes;
                    break;
                case r'content':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.content = valueDes;
                    break;
                case r'requirement':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.requirement = valueDes;
                    break;
                case r'expiration_date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.expirationDate = valueDes;
                    break;
                case r'company':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Company)) as Company;
                    result.company.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

