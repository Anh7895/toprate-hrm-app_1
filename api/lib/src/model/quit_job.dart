//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quit_job.g.dart';

/// QuitJob
///
/// Properties:
/// * [content] 
/// * [fromDate] 
abstract class QuitJob implements Built<QuitJob, QuitJobBuilder> {
    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'from_date')
    String? get fromDate;

    QuitJob._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(QuitJobBuilder b) => b;

    factory QuitJob([void updates(QuitJobBuilder b)]) = _$QuitJob;

    @BuiltValueSerializer(custom: true)
    static Serializer<QuitJob> get serializer => _$QuitJobSerializer();
}

class _$QuitJobSerializer implements StructuredSerializer<QuitJob> {
    @override
    final Iterable<Type> types = const [QuitJob, _$QuitJob];

    @override
    final String wireName = r'QuitJob';

    @override
    Iterable<Object?> serialize(Serializers serializers, QuitJob object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
        return result;
    }

    @override
    QuitJob deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = QuitJobBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
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
            }
        }
        return result.build();
    }
}

