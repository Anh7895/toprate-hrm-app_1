//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forgot_password.g.dart';

/// forgotPassword
///
/// Properties:
/// * [username] - username
/// * [password] - password
/// * [confirmPassword] - Confirm password
/// * [otp] - Otp
abstract class ForgotPassword implements Built<ForgotPassword, ForgotPasswordBuilder> {
    /// username
    @BuiltValueField(wireName: r'username')
    String get username;

    /// password
    @BuiltValueField(wireName: r'password')
    String get password;

    /// Confirm password
    @BuiltValueField(wireName: r'confirm_password')
    String get confirmPassword;

    /// Otp
    @BuiltValueField(wireName: r'otp')
    int? get otp;

    ForgotPassword._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ForgotPasswordBuilder b) => b;

    factory ForgotPassword([void updates(ForgotPasswordBuilder b)]) = _$ForgotPassword;

    @BuiltValueSerializer(custom: true)
    static Serializer<ForgotPassword> get serializer => _$ForgotPasswordSerializer();
}

class _$ForgotPasswordSerializer implements StructuredSerializer<ForgotPassword> {
    @override
    final Iterable<Type> types = const [ForgotPassword, _$ForgotPassword];

    @override
    final String wireName = r'ForgotPassword';

    @override
    Iterable<Object?> serialize(Serializers serializers, ForgotPassword object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'username')
            ..add(serializers.serialize(object.username,
                specifiedType: const FullType(String)));
        result
            ..add(r'password')
            ..add(serializers.serialize(object.password,
                specifiedType: const FullType(String)));
        result
            ..add(r'confirm_password')
            ..add(serializers.serialize(object.confirmPassword,
                specifiedType: const FullType(String)));
        if (object.otp != null) {
            result
                ..add(r'otp')
                ..add(serializers.serialize(object.otp,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    ForgotPassword deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ForgotPasswordBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'username':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.username = valueDes;
                    break;
                case r'password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.password = valueDes;
                    break;
                case r'confirm_password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.confirmPassword = valueDes;
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

