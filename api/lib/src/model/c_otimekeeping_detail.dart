//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'c_otimekeeping_detail.g.dart';

/// COtimekeepingDetail
///
/// Properties:
/// * [geCp] 
/// * [geHours] 
/// * [gePerHour] 
/// * [geTotalCp] 
abstract class COtimekeepingDetail implements Built<COtimekeepingDetail, COtimekeepingDetailBuilder> {
    @BuiltValueField(wireName: r'ge_cp')
    String? get geCp;

    @BuiltValueField(wireName: r'ge_hours')
    double? get geHours;

    @BuiltValueField(wireName: r'ge_per_hour')
    double? get gePerHour;

    @BuiltValueField(wireName: r'ge_total_cp')
    double? get geTotalCp;

    COtimekeepingDetail._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(COtimekeepingDetailBuilder b) => b;

    factory COtimekeepingDetail([void updates(COtimekeepingDetailBuilder b)]) = _$COtimekeepingDetail;

    @BuiltValueSerializer(custom: true)
    static Serializer<COtimekeepingDetail> get serializer => _$COtimekeepingDetailSerializer();
}

class _$COtimekeepingDetailSerializer implements StructuredSerializer<COtimekeepingDetail> {
    @override
    final Iterable<Type> types = const [COtimekeepingDetail, _$COtimekeepingDetail];

    @override
    final String wireName = r'COtimekeepingDetail';

    @override
    Iterable<Object?> serialize(Serializers serializers, COtimekeepingDetail object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.geCp != null) {
            result
                ..add(r'ge_cp')
                ..add(serializers.serialize(object.geCp,
                    specifiedType: const FullType(String)));
        }
        if (object.geHours != null) {
            result
                ..add(r'ge_hours')
                ..add(serializers.serialize(object.geHours,
                    specifiedType: const FullType(double)));
        }
        if (object.gePerHour != null) {
            result
                ..add(r'ge_per_hour')
                ..add(serializers.serialize(object.gePerHour,
                    specifiedType: const FullType(double)));
        }
        if (object.geTotalCp != null) {
            result
                ..add(r'ge_total_cp')
                ..add(serializers.serialize(object.geTotalCp,
                    specifiedType: const FullType(double)));
        }
        return result;
    }

    @override
    COtimekeepingDetail deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = COtimekeepingDetailBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'ge_cp':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.geCp = valueDes;
                    break;
                case r'ge_hours':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.geHours = valueDes;
                    break;
                case r'ge_per_hour':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.gePerHour = valueDes;
                    break;
                case r'ge_total_cp':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.geTotalCp = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

