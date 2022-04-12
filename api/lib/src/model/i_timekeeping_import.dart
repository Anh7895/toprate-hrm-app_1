//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'i_timekeeping_import.g.dart';

/// ITimekeepingImport
///
/// Properties:
/// * [url] 
/// * [companyId] 
abstract class ITimekeepingImport implements Built<ITimekeepingImport, ITimekeepingImportBuilder> {
    @BuiltValueField(wireName: r'url')
    String? get url;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    ITimekeepingImport._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ITimekeepingImportBuilder b) => b;

    factory ITimekeepingImport([void updates(ITimekeepingImportBuilder b)]) = _$ITimekeepingImport;

    @BuiltValueSerializer(custom: true)
    static Serializer<ITimekeepingImport> get serializer => _$ITimekeepingImportSerializer();
}

class _$ITimekeepingImportSerializer implements StructuredSerializer<ITimekeepingImport> {
    @override
    final Iterable<Type> types = const [ITimekeepingImport, _$ITimekeepingImport];

    @override
    final String wireName = r'ITimekeepingImport';

    @override
    Iterable<Object?> serialize(Serializers serializers, ITimekeepingImport object,
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
    ITimekeepingImport deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ITimekeepingImportBuilder();

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

