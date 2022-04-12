//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'co_candidate.g.dart';

/// COCandidate
///
/// Properties:
/// * [id] 
/// * [fullName] 
/// * [phone] 
/// * [birthday] 
/// * [address] 
/// * [nationalId] 
/// * [email] 
/// * [recruitmentsId] 
/// * [status] 
/// * [position] 
/// * [companyName] 
abstract class COCandidate implements Built<COCandidate, COCandidateBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

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

    @BuiltValueField(wireName: r'email')
    String? get email;

    @BuiltValueField(wireName: r'recruitments_id')
    int? get recruitmentsId;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'position')
    String? get position;

    @BuiltValueField(wireName: r'company_name')
    String? get companyName;

    COCandidate._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(COCandidateBuilder b) => b;

    factory COCandidate([void updates(COCandidateBuilder b)]) = _$COCandidate;

    @BuiltValueSerializer(custom: true)
    static Serializer<COCandidate> get serializer => _$COCandidateSerializer();
}

class _$COCandidateSerializer implements StructuredSerializer<COCandidate> {
    @override
    final Iterable<Type> types = const [COCandidate, _$COCandidate];

    @override
    final String wireName = r'COCandidate';

    @override
    Iterable<Object?> serialize(Serializers serializers, COCandidate object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
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
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        if (object.recruitmentsId != null) {
            result
                ..add(r'recruitments_id')
                ..add(serializers.serialize(object.recruitmentsId,
                    specifiedType: const FullType(int)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.position != null) {
            result
                ..add(r'position')
                ..add(serializers.serialize(object.position,
                    specifiedType: const FullType(String)));
        }
        if (object.companyName != null) {
            result
                ..add(r'company_name')
                ..add(serializers.serialize(object.companyName,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    COCandidate deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = COCandidateBuilder();

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
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.email = valueDes;
                    break;
                case r'recruitments_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.recruitmentsId = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'position':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.position = valueDes;
                    break;
                case r'company_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.companyName = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

