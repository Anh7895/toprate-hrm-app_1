//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel.g.dart';

/// Cancel
///
/// Properties:
/// * [reason] - Reason cancel contract
abstract class Cancel implements Built<Cancel, CancelBuilder> {
    /// Reason cancel contract
    @BuiltValueField(wireName: r'reason')
    String get reason;

    Cancel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CancelBuilder b) => b;

    factory Cancel([void updates(CancelBuilder b)]) = _$Cancel;

    @BuiltValueSerializer(custom: true)
    static Serializer<Cancel> get serializer => _$CancelSerializer();
}

class _$CancelSerializer implements StructuredSerializer<Cancel> {
    @override
    final Iterable<Type> types = const [Cancel, _$Cancel];

    @override
    final String wireName = r'Cancel';

    @override
    Iterable<Object?> serialize(Serializers serializers, Cancel object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'reason')
            ..add(serializers.serialize(object.reason,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    Cancel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CancelBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'reason':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.reason = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

