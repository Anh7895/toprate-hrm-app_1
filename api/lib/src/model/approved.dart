//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'approved.g.dart';

/// Approved
///
/// Properties:
/// * [id] - Letter id
/// * [status] - Letter status
abstract class Approved implements Built<Approved, ApprovedBuilder> {
    /// Letter id
    @BuiltValueField(wireName: r'id')
    int get id;

    /// Letter status
    @BuiltValueField(wireName: r'status')
    String get status;

    Approved._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ApprovedBuilder b) => b;

    factory Approved([void updates(ApprovedBuilder b)]) = _$Approved;

    @BuiltValueSerializer(custom: true)
    static Serializer<Approved> get serializer => _$ApprovedSerializer();
}

class _$ApprovedSerializer implements StructuredSerializer<Approved> {
    @override
    final Iterable<Type> types = const [Approved, _$Approved];

    @override
    final String wireName = r'Approved';

    @override
    Iterable<Object?> serialize(Serializers serializers, Approved object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(int)));
        result
            ..add(r'status')
            ..add(serializers.serialize(object.status,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    Approved deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ApprovedBuilder();

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
            }
        }
        return result.build();
    }
}

