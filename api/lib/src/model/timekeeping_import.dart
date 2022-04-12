//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timekeeping_import.g.dart';

/// TimekeepingImport
///
/// Properties:
/// * [url] 
/// * [companyId] 
abstract class TimekeepingImport implements Built<TimekeepingImport, TimekeepingImportBuilder> {
    @BuiltValueField(wireName: r'url')
    String? get url;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    TimekeepingImport._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TimekeepingImportBuilder b) => b;

    factory TimekeepingImport([void updates(TimekeepingImportBuilder b)]) = _$TimekeepingImport;

    @BuiltValueSerializer(custom: true)
    static Serializer<TimekeepingImport> get serializer => _$TimekeepingImportSerializer();
}

class _$TimekeepingImportSerializer implements StructuredSerializer<TimekeepingImport> {
    @override
    final Iterable<Type> types = const [TimekeepingImport, _$TimekeepingImport];

    @override
    final String wireName = r'TimekeepingImport';

    @override
    Iterable<Object?> serialize(Serializers serializers, TimekeepingImport object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.url != null) {
            result
                ..add(r'url')
                ..add(serializers.serialize(object.url,
                    specifiedType: const FullType(String)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    TimekeepingImport deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TimekeepingImportBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.url = valueDes;
                    break;
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

