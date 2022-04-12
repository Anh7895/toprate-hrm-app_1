//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_wrong_timekeeping.g.dart';

/// ListWrongTimekeeping
///
/// Properties:
/// * [id] 
/// * [companyName] 
/// * [workerName] 
/// * [workerCode] 
/// * [workerPhone] 
/// * [manHour] 
/// * [correctType] 
/// * [status] 
/// * [wrongDate] 
/// * [sendDate] 
abstract class ListWrongTimekeeping implements Built<ListWrongTimekeeping, ListWrongTimekeepingBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'company_name')
    String? get companyName;

    @BuiltValueField(wireName: r'worker_name')
    String? get workerName;

    @BuiltValueField(wireName: r'worker_code')
    String? get workerCode;

    @BuiltValueField(wireName: r'worker_phone')
    String? get workerPhone;

    @BuiltValueField(wireName: r'man_hour')
    double? get manHour;

    @BuiltValueField(wireName: r'correct_type')
    String? get correctType;

    @BuiltValueField(wireName: r'status')
    String? get status;

    @BuiltValueField(wireName: r'wrong_date')
    String? get wrongDate;

    @BuiltValueField(wireName: r'send_date')
    String? get sendDate;

    ListWrongTimekeeping._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ListWrongTimekeepingBuilder b) => b;

    factory ListWrongTimekeeping([void updates(ListWrongTimekeepingBuilder b)]) = _$ListWrongTimekeeping;

    @BuiltValueSerializer(custom: true)
    static Serializer<ListWrongTimekeeping> get serializer => _$ListWrongTimekeepingSerializer();
}

class _$ListWrongTimekeepingSerializer implements StructuredSerializer<ListWrongTimekeeping> {
    @override
    final Iterable<Type> types = const [ListWrongTimekeeping, _$ListWrongTimekeeping];

    @override
    final String wireName = r'ListWrongTimekeeping';

    @override
    Iterable<Object?> serialize(Serializers serializers, ListWrongTimekeeping object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.companyName != null) {
            result
                ..add(r'company_name')
                ..add(serializers.serialize(object.companyName,
                    specifiedType: const FullType(String)));
        }
        if (object.workerName != null) {
            result
                ..add(r'worker_name')
                ..add(serializers.serialize(object.workerName,
                    specifiedType: const FullType(String)));
        }
        if (object.workerCode != null) {
            result
                ..add(r'worker_code')
                ..add(serializers.serialize(object.workerCode,
                    specifiedType: const FullType(String)));
        }
        if (object.workerPhone != null) {
            result
                ..add(r'worker_phone')
                ..add(serializers.serialize(object.workerPhone,
                    specifiedType: const FullType(String)));
        }
        if (object.manHour != null) {
            result
                ..add(r'man_hour')
                ..add(serializers.serialize(object.manHour,
                    specifiedType: const FullType(double)));
        }
        if (object.correctType != null) {
            result
                ..add(r'correct_type')
                ..add(serializers.serialize(object.correctType,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(String)));
        }
        if (object.wrongDate != null) {
            result
                ..add(r'wrong_date')
                ..add(serializers.serialize(object.wrongDate,
                    specifiedType: const FullType(String)));
        }
        if (object.sendDate != null) {
            result
                ..add(r'send_date')
                ..add(serializers.serialize(object.sendDate,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ListWrongTimekeeping deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListWrongTimekeepingBuilder();

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
                case r'company_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.companyName = valueDes;
                    break;
                case r'worker_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.workerName = valueDes;
                    break;
                case r'worker_code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.workerCode = valueDes;
                    break;
                case r'worker_phone':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.workerPhone = valueDes;
                    break;
                case r'man_hour':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.manHour = valueDes;
                    break;
                case r'correct_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.correctType = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'wrong_date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.wrongDate = valueDes;
                    break;
                case r'send_date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.sendDate = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

