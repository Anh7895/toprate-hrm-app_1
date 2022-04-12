//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'staff.g.dart';

/// Staff
///
/// Properties:
/// * [code] 
/// * [fullName] 
/// * [phone] 
/// * [nationalId] 
/// * [birthday] 
/// * [sex] 
/// * [email] 
/// * [address] 
/// * [dateOfIssue] 
/// * [placeOfIssue] 
/// * [companyId] 
/// * [roleId] 
abstract class Staff implements Built<Staff, StaffBuilder> {
    @BuiltValueField(wireName: r'code')
    String? get code;

    @BuiltValueField(wireName: r'full_name')
    String? get fullName;

    @BuiltValueField(wireName: r'phone')
    String? get phone;

    @BuiltValueField(wireName: r'national_id')
    String? get nationalId;

    @BuiltValueField(wireName: r'birthday')
    String? get birthday;

    @BuiltValueField(wireName: r'sex')
    String? get sex;

    @BuiltValueField(wireName: r'email')
    String? get email;

    @BuiltValueField(wireName: r'address')
    String? get address;

    @BuiltValueField(wireName: r'date_of_issue')
    String? get dateOfIssue;

    @BuiltValueField(wireName: r'place_of_issue')
    String? get placeOfIssue;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    @BuiltValueField(wireName: r'role_id')
    int? get roleId;

    Staff._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(StaffBuilder b) => b;

    factory Staff([void updates(StaffBuilder b)]) = _$Staff;

    @BuiltValueSerializer(custom: true)
    static Serializer<Staff> get serializer => _$StaffSerializer();
}

class _$StaffSerializer implements StructuredSerializer<Staff> {
    @override
    final Iterable<Type> types = const [Staff, _$Staff];

    @override
    final String wireName = r'Staff';

    @override
    Iterable<Object?> serialize(Serializers serializers, Staff object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.code != null) {
            result
                ..add(r'code')
                ..add(serializers.serialize(object.code,
                    specifiedType: const FullType(String)));
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
        if (object.nationalId != null) {
            result
                ..add(r'national_id')
                ..add(serializers.serialize(object.nationalId,
                    specifiedType: const FullType(String)));
        }
        if (object.birthday != null) {
            result
                ..add(r'birthday')
                ..add(serializers.serialize(object.birthday,
                    specifiedType: const FullType(String)));
        }
        if (object.sex != null) {
            result
                ..add(r'sex')
                ..add(serializers.serialize(object.sex,
                    specifiedType: const FullType(String)));
        }
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        if (object.address != null) {
            result
                ..add(r'address')
                ..add(serializers.serialize(object.address,
                    specifiedType: const FullType(String)));
        }
        if (object.dateOfIssue != null) {
            result
                ..add(r'date_of_issue')
                ..add(serializers.serialize(object.dateOfIssue,
                    specifiedType: const FullType(String)));
        }
        if (object.placeOfIssue != null) {
            result
                ..add(r'place_of_issue')
                ..add(serializers.serialize(object.placeOfIssue,
                    specifiedType: const FullType(String)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        if (object.roleId != null) {
            result
                ..add(r'role_id')
                ..add(serializers.serialize(object.roleId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    Staff deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = StaffBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.code = valueDes;
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
                case r'national_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nationalId = valueDes;
                    break;
                case r'birthday':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.birthday = valueDes;
                    break;
                case r'sex':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.sex = valueDes;
                    break;
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.email = valueDes;
                    break;
                case r'address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.address = valueDes;
                    break;
                case r'date_of_issue':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.dateOfIssue = valueDes;
                    break;
                case r'place_of_issue':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.placeOfIssue = valueDes;
                    break;
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
                case r'role_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.roleId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

