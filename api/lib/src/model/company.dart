//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/industrial_area.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'company.g.dart';

/// Domains\\Company\\Models\\Company
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [phone] 
/// * [industrialAreaId] 
/// * [address] 
/// * [image] 
/// * [description] 
/// * [industrialAreas] 
abstract class Company implements Built<Company, CompanyBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'phone')
    String? get phone;

    @BuiltValueField(wireName: r'industrial_area_id')
    int? get industrialAreaId;

    @BuiltValueField(wireName: r'address')
    String? get address;

    @BuiltValueField(wireName: r'image')
    String? get image;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'industrial_areas')
    IndustrialArea? get industrialAreas;

    Company._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CompanyBuilder b) => b;

    factory Company([void updates(CompanyBuilder b)]) = _$Company;

    @BuiltValueSerializer(custom: true)
    static Serializer<Company> get serializer => _$CompanySerializer();
}

class _$CompanySerializer implements StructuredSerializer<Company> {
    @override
    final Iterable<Type> types = const [Company, _$Company];

    @override
    final String wireName = r'Company';

    @override
    Iterable<Object?> serialize(Serializers serializers, Company object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.phone != null) {
            result
                ..add(r'phone')
                ..add(serializers.serialize(object.phone,
                    specifiedType: const FullType(String)));
        }
        if (object.industrialAreaId != null) {
            result
                ..add(r'industrial_area_id')
                ..add(serializers.serialize(object.industrialAreaId,
                    specifiedType: const FullType(int)));
        }
        if (object.address != null) {
            result
                ..add(r'address')
                ..add(serializers.serialize(object.address,
                    specifiedType: const FullType(String)));
        }
        if (object.image != null) {
            result
                ..add(r'image')
                ..add(serializers.serialize(object.image,
                    specifiedType: const FullType(String)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.industrialAreas != null) {
            result
                ..add(r'industrial_areas')
                ..add(serializers.serialize(object.industrialAreas,
                    specifiedType: const FullType(IndustrialArea)));
        }
        return result;
    }

    @override
    Company deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CompanyBuilder();

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
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'phone':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.phone = valueDes;
                    break;
                case r'industrial_area_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.industrialAreaId = valueDes;
                    break;
                case r'address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.address = valueDes;
                    break;
                case r'image':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.image = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'industrial_areas':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(IndustrialArea)) as IndustrialArea;
                    result.industrialAreas.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

