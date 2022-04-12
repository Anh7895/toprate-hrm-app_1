//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ci_candidate.g.dart';

/// CICandidate
///
/// Properties:
/// * [fullName] 
/// * [phone] 
/// * [birthday] 
/// * [address] 
/// * [nationalId] 
/// * [recruitmentsId] 
abstract class CICandidate implements Built<CICandidate, CICandidateBuilder> {
    @BuiltValueField(wireName: r'full_name')
    String? get fullName;

    @BuiltValueField(wireName: r'phone')
    String? get phone;

    @BuiltValueField(wireName: r'birthday')
    String? get birthday;

    @BuiltValueField(wireName: r'address')
    String? get address;

    @BuiltValueField(wireName: r'national_id')
    String? get nationalId;

    @BuiltValueField(wireName: r'recruitments_id')
    int? get recruitmentsId;

    CICandidate._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CICandidateBuilder b) => b;

    factory CICandidate([void updates(CICandidateBuilder b)]) = _$CICandidate;

    @BuiltValueSerializer(custom: true)
    static Serializer<CICandidate> get serializer => _$CICandidateSerializer();
}

class _$CICandidateSerializer implements StructuredSerializer<CICandidate> {
    @override
    final Iterable<Type> types = const [CICandidate, _$CICandidate];

    @override
    final String wireName = r'CICandidate';

    @override
    Iterable<Object?> serialize(Serializers serializers, CICandidate object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.fullName != null) {
            result
                ..add(r'full_name')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType(String)));
        }
        if (object.phone != null) {
            result
                ..add(r'phone')
                ..add(serializers.serialize(object.phone,
                    specifiedType: const FullType(String)));
        }
        if (object.birthday != null) {
            result
                ..add(r'birthday')
                ..add(serializers.serialize(object.birthday,
                    specifiedType: const FullType(String)));
        }
        if (object.address != null) {
            result
                ..add(r'address')
                ..add(serializers.serialize(object.address,
                    specifiedType: const FullType(String)));
        }
        if (object.nationalId != null) {
            result
                ..add(r'national_id')
                ..add(serializers.serialize(object.nationalId,
                    specifiedType: const FullType(String)));
        }
        if (object.recruitmentsId != null) {
            result
                ..add(r'recruitments_id')
                ..add(serializers.serialize(object.recruitmentsId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    CICandidate deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CICandidateBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'full_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fullName = valueDes;
                    break;
                case r'phone':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.phone = valueDes;
                    break;
                case r'birthday':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.birthday = valueDes;
                    break;
                case r'address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.address = valueDes;
                    break;
                case r'national_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nationalId = valueDes;
                    break;
                case r'recruitments_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.recruitmentsId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

