//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/allowance_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'allowances.g.dart';

/// Allowances
///
/// Properties:
/// * [allowanceTotal] 
/// * [totalTimekeepingAllowance] 
/// * [allowanceDetail] 
abstract class Allowances implements Built<Allowances, AllowancesBuilder> {
    @BuiltValueField(wireName: r'allowance_total')
    double? get allowanceTotal;

    @BuiltValueField(wireName: r'total_timekeeping_allowance')
    double? get totalTimekeepingAllowance;

    @BuiltValueField(wireName: r'allowance_detail')
    BuiltList<AllowanceDetail>? get allowanceDetail;

    Allowances._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AllowancesBuilder b) => b;

    factory Allowances([void updates(AllowancesBuilder b)]) = _$Allowances;

    @BuiltValueSerializer(custom: true)
    static Serializer<Allowances> get serializer => _$AllowancesSerializer();
}

class _$AllowancesSerializer implements StructuredSerializer<Allowances> {
    @override
    final Iterable<Type> types = const [Allowances, _$Allowances];

    @override
    final String wireName = r'Allowances';

    @override
    Iterable<Object?> serialize(Serializers serializers, Allowances object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.allowanceTotal != null) {
            result
                ..add(r'allowance_total')
                ..add(serializers.serialize(object.allowanceTotal,
                    specifiedType: const FullType(double)));
        }
        if (object.totalTimekeepingAllowance != null) {
            result
                ..add(r'total_timekeeping_allowance')
                ..add(serializers.serialize(object.totalTimekeepingAllowance,
                    specifiedType: const FullType(double)));
        }
        if (object.allowanceDetail != null) {
            result
                ..add(r'allowance_detail')
                ..add(serializers.serialize(object.allowanceDetail,
                    specifiedType: const FullType(BuiltList, [FullType(AllowanceDetail)])));
        }
        return result;
    }

    @override
    Allowances deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AllowancesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'allowance_total':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.allowanceTotal = valueDes;
                    break;
                case r'total_timekeeping_allowance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.totalTimekeepingAllowance = valueDes;
                    break;
                case r'allowance_detail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(AllowanceDetail)])) as BuiltList<AllowanceDetail>;
                    result.allowanceDetail.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

