//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_password.g.dart';

/// Update password
///
/// Properties:
/// * [oldPassword] - Old password
/// * [newPassword] - New password
/// * [confirmNewPassword] - Confirm new password
/// * [otp] - Otp
abstract class UpdatePassword implements Built<UpdatePassword, UpdatePasswordBuilder> {
    /// Old password
    @BuiltValueField(wireName: r'old_password')
    String get oldPassword;

    /// New password
    @BuiltValueField(wireName: r'new_password')
    String get newPassword;

    /// Confirm new password
    @BuiltValueField(wireName: r'confirm_new_password')
    String get confirmNewPassword;

    /// Otp
    @BuiltValueField(wireName: r'otp')
    int get otp;

    UpdatePassword._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UpdatePasswordBuilder b) => b;

    factory UpdatePassword([void updates(UpdatePasswordBuilder b)]) = _$UpdatePassword;

    @BuiltValueSerializer(custom: true)
    static Serializer<UpdatePassword> get serializer => _$UpdatePasswordSerializer();
}

class _$UpdatePasswordSerializer implements StructuredSerializer<UpdatePassword> {
    @override
    final Iterable<Type> types = const [UpdatePassword, _$UpdatePassword];

    @override
    final String wireName = r'UpdatePassword';

    @override
    Iterable<Object?> serialize(Serializers serializers, UpdatePassword object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'old_password')
            ..add(serializers.serialize(object.oldPassword,
                specifiedType: const FullType(String)));
        result
            ..add(r'new_password')
            ..add(serializers.serialize(object.newPassword,
                specifiedType: const FullType(String)));
        result
            ..add(r'confirm_new_password')
            ..add(serializers.serialize(object.confirmNewPassword,
                specifiedType: const FullType(String)));
        result
            ..add(r'otp')
            ..add(serializers.serialize(object.otp,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    UpdatePassword deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UpdatePasswordBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'old_password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.oldPassword = valueDes;
                    break;
                case r'new_password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.newPassword = valueDes;
                    break;
                case r'confirm_new_password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.confirmNewPassword = valueDes;
                    break;
                case r'otp':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.otp = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

