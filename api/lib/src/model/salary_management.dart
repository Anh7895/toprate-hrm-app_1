//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/salary_management_transaction_details.dart';
import 'package:openapi/src/model/bank.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'salary_management.g.dart';

/// SalaryManagement
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
/// * [statementPre] 
/// * [statement] 
/// * [withdrawal] 
/// * [bank] 
/// * [transactionDetails] 
abstract class SalaryManagement implements Built<SalaryManagement, SalaryManagementBuilder> {
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

    @BuiltValueField(wireName: r'statement_pre')
    String? get statementPre;

    @BuiltValueField(wireName: r'statement')
    String? get statement;

    @BuiltValueField(wireName: r'withdrawal')
    String? get withdrawal;

    @BuiltValueField(wireName: r'bank')
    Bank? get bank;

    @BuiltValueField(wireName: r'transaction-details')
    BuiltList<SalaryManagementTransactionDetails>? get transactionDetails;

    SalaryManagement._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SalaryManagementBuilder b) => b;

    factory SalaryManagement([void updates(SalaryManagementBuilder b)]) = _$SalaryManagement;

    @BuiltValueSerializer(custom: true)
    static Serializer<SalaryManagement> get serializer => _$SalaryManagementSerializer();
}

class _$SalaryManagementSerializer implements StructuredSerializer<SalaryManagement> {
    @override
    final Iterable<Type> types = const [SalaryManagement, _$SalaryManagement];

    @override
    final String wireName = r'SalaryManagement';

    @override
    Iterable<Object?> serialize(Serializers serializers, SalaryManagement object,
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
        if (object.statementPre != null) {
            result
                ..add(r'statement_pre')
                ..add(serializers.serialize(object.statementPre,
                    specifiedType: const FullType(String)));
        }
        if (object.statement != null) {
            result
                ..add(r'statement')
                ..add(serializers.serialize(object.statement,
                    specifiedType: const FullType(String)));
        }
        if (object.withdrawal != null) {
            result
                ..add(r'withdrawal')
                ..add(serializers.serialize(object.withdrawal,
                    specifiedType: const FullType(String)));
        }
        if (object.bank != null) {
            result
                ..add(r'bank')
                ..add(serializers.serialize(object.bank,
                    specifiedType: const FullType(Bank)));
        }
        if (object.transactionDetails != null) {
            result
                ..add(r'transaction-details')
                ..add(serializers.serialize(object.transactionDetails,
                    specifiedType: const FullType(BuiltList, [FullType(SalaryManagementTransactionDetails)])));
        }
        return result;
    }

    @override
    SalaryManagement deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SalaryManagementBuilder();

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
                case r'statement_pre':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.statementPre = valueDes;
                    break;
                case r'statement':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.statement = valueDes;
                    break;
                case r'withdrawal':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.withdrawal = valueDes;
                    break;
                case r'bank':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Bank)) as Bank;
                    result.bank.replace(valueDes);
                    break;
                case r'transaction-details':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(SalaryManagementTransactionDetails)])) as BuiltList<SalaryManagementTransactionDetails>;
                    result.transactionDetails.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

