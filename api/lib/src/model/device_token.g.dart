// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceToken extends DeviceToken {
  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String? token;
  @override
  final String? type;
  @override
  final String? deviceId;

  factory _$DeviceToken([void Function(DeviceTokenBuilder)? updates]) =>
      (new DeviceTokenBuilder()..update(updates)).build();

  _$DeviceToken._({this.id, this.userId, this.token, this.type, this.deviceId})
      : super._();

  @override
  DeviceToken rebuild(void Function(DeviceTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceTokenBuilder toBuilder() => new DeviceTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceToken &&
        id == other.id &&
        userId == other.userId &&
        token == other.token &&
        type == other.type &&
        deviceId == other.deviceId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), userId.hashCode), token.hashCode),
            type.hashCode),
        deviceId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeviceToken')
          ..add('id', id)
          ..add('userId', userId)
          ..add('token', token)
          ..add('type', type)
          ..add('deviceId', deviceId))
        .toString();
  }
}

class DeviceTokenBuilder implements Builder<DeviceToken, DeviceTokenBuilder> {
  _$DeviceToken? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  DeviceTokenBuilder() {
    DeviceToken._defaults(this);
  }

  DeviceTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _token = $v.token;
      _type = $v.type;
      _deviceId = $v.deviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeviceToken;
  }

  @override
  void update(void Function(DeviceTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeviceToken build() {
    final _$result = _$v ??
        new _$DeviceToken._(
            id: id,
            userId: userId,
            token: token,
            type: type,
            deviceId: deviceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
