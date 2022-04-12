//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ci_recruitment.g.dart';

/// CIRecruitment
///
/// Properties:
/// * [companyId] 
/// * [position] 
/// * [quantity] 
/// * [content] 
/// * [requirement] 
/// * [expirationDate] 
abstract class CIRecruitment implements Built<CIRecruitment, CIRecruitmentBuilder> {
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

    CIRecruitment._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CIRecruitmentBuilder b) => b;

    factory CIRecruitment([void updates(CIRecruitmentBuilder b)]) = _$CIRecruitment;

    @BuiltValueSerializer(custom: true)
    static Serializer<CIRecruitment> get serializer => _$CIRecruitmentSerializer();
}

class _$CIRecruitmentSerializer implements StructuredSerializer<CIRecruitment> {
    @override
    final Iterable<Type> types = const [CIRecruitment, _$CIRecruitment];

    @override
    final String wireName = r'CIRecruitment';

    @override
    Iterable<Object?> serialize(Serializers serializers, CIRecruitment object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
        return result;
    }

    @override
    CIRecruitment deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CIRecruitmentBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
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
            }
        }
        return result.build();
    }
}

