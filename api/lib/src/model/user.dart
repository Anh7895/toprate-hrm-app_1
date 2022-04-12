//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/labor_contract.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/company.dart';
import 'package:openapi/src/model/bank.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// Domains\\User\\Models\\User
///
/// Properties:
/// * [id] 
/// * [uuid] 
/// * [username] 
/// * [fullName] 
/// * [phone] 
/// * [nationalId] 
/// * [birthday] 
/// * [sex] 
/// * [email] 
/// * [address] 
/// * [dateOfIssue] 
/// * [placeOfIssue] 
/// * [accountBalance] 
/// * [isLock] 
/// * [bankId] 
/// * [code] 
/// * [company] 
/// * [bank] 
/// * [laborContract] 
/// * [roleId] 
/// * [roleName] 
/// * [statementAt] 
abstract class User implements Built<User, UserBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'uuid')
    String? get uuid;

    @BuiltValueField(wireName: r'username')
    String? get username;

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

    @BuiltValueField(wireName: r'account_balance')
    String? get accountBalance;

    @BuiltValueField(wireName: r'is_lock')
    int? get isLock;

    @BuiltValueField(wireName: r'bank_id')
    int? get bankId;

    @BuiltValueField(wireName: r'code')
    String? get code;

    @BuiltValueField(wireName: r'company')
    Company? get company;

    @BuiltValueField(wireName: r'bank')
    Bank? get bank;

    @BuiltValueField(wireName: r'labor_contract')
    BuiltList<LaborContract>? get laborContract;

    @BuiltValueField(wireName: r'role_id')
    int? get roleId;

    @BuiltValueField(wireName: r'role_name')
    String? get roleName;

    @BuiltValueField(wireName: r'statement_at')
    String? get statementAt;

    User._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserBuilder b) => b;

    factory User([void updates(UserBuilder b)]) = _$User;

    @BuiltValueSerializer(custom: true)
    static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements StructuredSerializer<User> {
    @override
    final Iterable<Type> types = const [User, _$User];

    @override
    final String wireName = r'User';

    @override
    Iterable<Object?> serialize(Serializers serializers, User object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.uuid != null) {
            result
                ..add(r'uuid')
                ..add(serializers.serialize(object.uuid,
                    specifiedType: const FullType(String)));
        }
        if (object.username != null) {
            result
                ..add(r'username')
                ..add(serializers.serialize(object.username,
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
        if (object.accountBalance != null) {
            result
                ..add(r'account_balance')
                ..add(serializers.serialize(object.accountBalance,
                    specifiedType: const FullType(String)));
        }
        if (object.isLock != null) {
            result
                ..add(r'is_lock')
                ..add(serializers.serialize(object.isLock,
                    specifiedType: const FullType(int)));
        }
        if (object.bankId != null) {
            result
                ..add(r'bank_id')
                ..add(serializers.serialize(object.bankId,
                    specifiedType: const FullType(int)));
        }
        if (object.code != null) {
            result
                ..add(r'code')
                ..add(serializers.serialize(object.code,
                    specifiedType: const FullType(String)));
        }
        if (object.company != null) {
            result
                ..add(r'company')
                ..add(serializers.serialize(object.company,
                    specifiedType: const FullType(Company)));
        }
        if (object.bank != null) {
            result
                ..add(r'bank')
                ..add(serializers.serialize(object.bank,
                    specifiedType: const FullType(Bank)));
        }
        if (object.laborContract != null) {
            result
                ..add(r'labor_contract')
                ..add(serializers.serialize(object.laborContract,
                    specifiedType: const FullType(BuiltList, [FullType(LaborContract)])));
        }
        if (object.roleId != null) {
            result
                ..add(r'role_id')
                ..add(serializers.serialize(object.roleId,
                    specifiedType: const FullType(int)));
        }
        if (object.roleName != null) {
            result
                ..add(r'role_name')
                ..add(serializers.serialize(object.roleName,
                    specifiedType: const FullType(String)));
        }
        if (object.statementAt != null) {
            result
                ..add(r'statement_at')
                ..add(serializers.serialize(object.statementAt,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    User deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserBuilder();

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
                case r'uuid':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.uuid = valueDes;
                    break;
                case r'username':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.username = valueDes;
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
                case r'account_balance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.accountBalance = valueDes;
                    break;
                case r'is_lock':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.isLock = valueDes;
                    break;
                case r'bank_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.bankId = valueDes;
                    break;
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.code = valueDes;
                    break;
                case r'company':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Company)) as Company;
                    result.company.replace(valueDes);
                    break;
                case r'bank':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Bank)) as Bank;
                    result.bank.replace(valueDes);
                    break;
                case r'labor_contract':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(LaborContract)])) as BuiltList<LaborContract>;
                    result.laborContract.replace(valueDes);
                    break;
                case r'role_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.roleId = valueDes;
                    break;
                case r'role_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.roleName = valueDes;
                    break;
                case r'statement_at':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.statementAt = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

