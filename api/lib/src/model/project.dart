//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project.g.dart';

/// Project
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [type] 
/// * [desc] 
/// * [status] 
/// * [startDate] 
/// * [endDate] 
/// * [companyId] 
abstract class Project implements Built<Project, ProjectBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'desc')
    String? get desc;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'start_date')
    String? get startDate;

    @BuiltValueField(wireName: r'end_date')
    String? get endDate;

    @BuiltValueField(wireName: r'company_id')
    String? get companyId;

    Project._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ProjectBuilder b) => b;

    factory Project([void updates(ProjectBuilder b)]) = _$Project;

    @BuiltValueSerializer(custom: true)
    static Serializer<Project> get serializer => _$ProjectSerializer();
}

class _$ProjectSerializer implements StructuredSerializer<Project> {
    @override
    final Iterable<Type> types = const [Project, _$Project];

    @override
    final String wireName = r'Project';

    @override
    Iterable<Object?> serialize(Serializers serializers, Project object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.desc != null) {
            result
                ..add(r'desc')
                ..add(serializers.serialize(object.desc,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.startDate != null) {
            result
                ..add(r'start_date')
                ..add(serializers.serialize(object.startDate,
                    specifiedType: const FullType(String)));
        }
        if (object.endDate != null) {
            result
                ..add(r'end_date')
                ..add(serializers.serialize(object.endDate,
                    specifiedType: const FullType(String)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Project deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ProjectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.type = valueDes;
                    break;
                case r'desc':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.desc = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'start_date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.startDate = valueDes;
                    break;
                case r'end_date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.endDate = valueDes;
                    break;
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.companyId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

