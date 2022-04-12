//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/company.dart';
import 'package:openapi/src/model/o_confficient_pay.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_timekeeping_detail.g.dart';

/// OTimekeepingDetail
///
/// Properties:
/// * [id] 
/// * [code] 
/// * [date] 
/// * [hour] 
/// * [coefficientPayId] 
/// * [companyId] 
/// * [fullName] 
/// * [company] 
/// * [coefficientPay] 
abstract class OTimekeepingDetail implements Built<OTimekeepingDetail, OTimekeepingDetailBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'code')
    String? get code;

    @BuiltValueField(wireName: r'date')
    String? get date;

    @BuiltValueField(wireName: r'hour')
    String? get hour;

    @BuiltValueField(wireName: r'coefficient_pay_id')
    int? get coefficientPayId;

    @BuiltValueField(wireName: r'company_id')
    int? get companyId;

    @BuiltValueField(wireName: r'full_name')
    String? get fullName;

    @BuiltValueField(wireName: r'company')
    Company? get company;

    @BuiltValueField(wireName: r'coefficient_pay')
    OConfficientPay? get coefficientPay;

    OTimekeepingDetail._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OTimekeepingDetailBuilder b) => b;

    factory OTimekeepingDetail([void updates(OTimekeepingDetailBuilder b)]) = _$OTimekeepingDetail;

    @BuiltValueSerializer(custom: true)
    static Serializer<OTimekeepingDetail> get serializer => _$OTimekeepingDetailSerializer();
}

class _$OTimekeepingDetailSerializer implements StructuredSerializer<OTimekeepingDetail> {
    @override
    final Iterable<Type> types = const [OTimekeepingDetail, _$OTimekeepingDetail];

    @override
    final String wireName = r'OTimekeepingDetail';

    @override
    Iterable<Object?> serialize(Serializers serializers, OTimekeepingDetail object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.code != null) {
            result
                ..add(r'code')
                ..add(serializers.serialize(object.code,
                    specifiedType: const FullType(String)));
        }
        if (object.date != null) {
            result
                ..add(r'date')
                ..add(serializers.serialize(object.date,
                    specifiedType: const FullType(String)));
        }
        if (object.hour != null) {
            result
                ..add(r'hour')
                ..add(serializers.serialize(object.hour,
                    specifiedType: const FullType(String)));
        }
        if (object.coefficientPayId != null) {
            result
                ..add(r'coefficient_pay_id')
                ..add(serializers.serialize(object.coefficientPayId,
                    specifiedType: const FullType(int)));
        }
        if (object.companyId != null) {
            result
                ..add(r'company_id')
                ..add(serializers.serialize(object.companyId,
                    specifiedType: const FullType(int)));
        }
        if (object.fullName != null) {
            result
                ..add(r'full_name')
                ..add(serializers.serialize(object.fullName,
                    specifiedType: const FullType(String)));
        }
        if (object.company != null) {
            result
                ..add(r'company')
                ..add(serializers.serialize(object.company,
                    specifiedType: const FullType(Company)));
        }
        if (object.coefficientPay != null) {
            result
                ..add(r'coefficient_pay')
                ..add(serializers.serialize(object.coefficientPay,
                    specifiedType: const FullType(OConfficientPay)));
        }
        return result;
    }

    @override
    OTimekeepingDetail deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OTimekeepingDetailBuilder();

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
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.code = valueDes;
                    break;
                case r'date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.date = valueDes;
                    break;
                case r'hour':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.hour = valueDes;
                    break;
                case r'coefficient_pay_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.coefficientPayId = valueDes;
                    break;
                case r'company_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.companyId = valueDes;
                    break;
                case r'full_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.fullName = valueDes;
                    break;
                case r'company':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Company)) as Company;
                    result.company.replace(valueDes);
                    break;
                case r'coefficient_pay':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OConfficientPay)) as OConfficientPay;
                    result.coefficientPay.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

