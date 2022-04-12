//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'total.g.dart';

/// Total
///
/// Properties:
/// * [recruitmentNews] 
/// * [recruitmentApply] 
/// * [newEmployee] 
/// * [quitjobEmployee] 
abstract class Total implements Built<Total, TotalBuilder> {
    @BuiltValueField(wireName: r'recruitment_news')
    int? get recruitmentNews;

    @BuiltValueField(wireName: r'recruitment_apply')
    int? get recruitmentApply;

    @BuiltValueField(wireName: r'new_employee')
    int? get newEmployee;

    @BuiltValueField(wireName: r'quitjob_employee')
    int? get quitjobEmployee;

    Total._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TotalBuilder b) => b;

    factory Total([void updates(TotalBuilder b)]) = _$Total;

    @BuiltValueSerializer(custom: true)
    static Serializer<Total> get serializer => _$TotalSerializer();
}

class _$TotalSerializer implements StructuredSerializer<Total> {
    @override
    final Iterable<Type> types = const [Total, _$Total];

    @override
    final String wireName = r'Total';

    @override
    Iterable<Object?> serialize(Serializers serializers, Total object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.recruitmentNews != null) {
            result
                ..add(r'recruitment_news')
                ..add(serializers.serialize(object.recruitmentNews,
                    specifiedType: const FullType(int)));
        }
        if (object.recruitmentApply != null) {
            result
                ..add(r'recruitment_apply')
                ..add(serializers.serialize(object.recruitmentApply,
                    specifiedType: const FullType(int)));
        }
        if (object.newEmployee != null) {
            result
                ..add(r'new_employee')
                ..add(serializers.serialize(object.newEmployee,
                    specifiedType: const FullType(int)));
        }
        if (object.quitjobEmployee != null) {
            result
                ..add(r'quitjob_employee')
                ..add(serializers.serialize(object.quitjobEmployee,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    Total deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TotalBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'recruitment_news':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.recruitmentNews = valueDes;
                    break;
                case r'recruitment_apply':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.recruitmentApply = valueDes;
                    break;
                case r'new_employee':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.newEmployee = valueDes;
                    break;
                case r'quitjob_employee':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.quitjobEmployee = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

