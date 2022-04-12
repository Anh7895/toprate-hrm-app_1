//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/timekeeping.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calendar_timekeeping_timekeeping.g.dart';

/// CalendarTimekeepingTimekeeping
///
/// Properties:
/// * [dayShift] 
/// * [nightShift] 
/// * [dayHoliday] 
/// * [nightHoliday] 
/// * [dayOvertime] 
/// * [nightOvertime] 
abstract class CalendarTimekeepingTimekeeping implements Built<CalendarTimekeepingTimekeeping, CalendarTimekeepingTimekeepingBuilder> {
    @BuiltValueField(wireName: r'day_shift')
    BuiltList<Timekeeping>? get dayShift;

    @BuiltValueField(wireName: r'night_shift')
    BuiltList<Timekeeping>? get nightShift;

    @BuiltValueField(wireName: r'day_holiday')
    BuiltList<Timekeeping>? get dayHoliday;

    @BuiltValueField(wireName: r'night_holiday')
    BuiltList<Timekeeping>? get nightHoliday;

    @BuiltValueField(wireName: r'day_overtime')
    BuiltList<Timekeeping>? get dayOvertime;

    @BuiltValueField(wireName: r'night_overtime')
    BuiltList<Timekeeping>? get nightOvertime;

    CalendarTimekeepingTimekeeping._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CalendarTimekeepingTimekeepingBuilder b) => b;

    factory CalendarTimekeepingTimekeeping([void updates(CalendarTimekeepingTimekeepingBuilder b)]) = _$CalendarTimekeepingTimekeeping;

    @BuiltValueSerializer(custom: true)
    static Serializer<CalendarTimekeepingTimekeeping> get serializer => _$CalendarTimekeepingTimekeepingSerializer();
}

class _$CalendarTimekeepingTimekeepingSerializer implements StructuredSerializer<CalendarTimekeepingTimekeeping> {
    @override
    final Iterable<Type> types = const [CalendarTimekeepingTimekeeping, _$CalendarTimekeepingTimekeeping];

    @override
    final String wireName = r'CalendarTimekeepingTimekeeping';

    @override
    Iterable<Object?> serialize(Serializers serializers, CalendarTimekeepingTimekeeping object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.dayShift != null) {
            result
                ..add(r'day_shift')
                ..add(serializers.serialize(object.dayShift,
                    specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])));
        }
        if (object.nightShift != null) {
            result
                ..add(r'night_shift')
                ..add(serializers.serialize(object.nightShift,
                    specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])));
        }
        if (object.dayHoliday != null) {
            result
                ..add(r'day_holiday')
                ..add(serializers.serialize(object.dayHoliday,
                    specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])));
        }
        if (object.nightHoliday != null) {
            result
                ..add(r'night_holiday')
                ..add(serializers.serialize(object.nightHoliday,
                    specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])));
        }
        if (object.dayOvertime != null) {
            result
                ..add(r'day_overtime')
                ..add(serializers.serialize(object.dayOvertime,
                    specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])));
        }
        if (object.nightOvertime != null) {
            result
                ..add(r'night_overtime')
                ..add(serializers.serialize(object.nightOvertime,
                    specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])));
        }
        return result;
    }

    @override
    CalendarTimekeepingTimekeeping deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CalendarTimekeepingTimekeepingBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'day_shift':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])) as BuiltList<Timekeeping>;
                    result.dayShift.replace(valueDes);
                    break;
                case r'night_shift':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])) as BuiltList<Timekeeping>;
                    result.nightShift.replace(valueDes);
                    break;
                case r'day_holiday':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])) as BuiltList<Timekeeping>;
                    result.dayHoliday.replace(valueDes);
                    break;
                case r'night_holiday':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])) as BuiltList<Timekeeping>;
                    result.nightHoliday.replace(valueDes);
                    break;
                case r'day_overtime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])) as BuiltList<Timekeeping>;
                    result.dayOvertime.replace(valueDes);
                    break;
                case r'night_overtime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Timekeeping)])) as BuiltList<Timekeeping>;
                    result.nightOvertime.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

