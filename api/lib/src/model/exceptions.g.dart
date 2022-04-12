// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exceptions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Exceptions extends Exceptions {
  @override
  final JsonObject? messages;
  @override
  final String? message;

  factory _$Exceptions([void Function(ExceptionsBuilder)? updates]) =>
      (new ExceptionsBuilder()..update(updates)).build();

  _$Exceptions._({this.messages, this.message}) : super._();

  @override
  Exceptions rebuild(void Function(ExceptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExceptionsBuilder toBuilder() => new ExceptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Exceptions &&
        messages == other.messages &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, messages.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Exceptions')
          ..add('messages', messages)
          ..add('message', message))
        .toString();
  }
}

class ExceptionsBuilder implements Builder<Exceptions, ExceptionsBuilder> {
  _$Exceptions? _$v;

  JsonObject? _messages;
  JsonObject? get messages => _$this._messages;
  set messages(JsonObject? messages) => _$this._messages = messages;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ExceptionsBuilder() {
    Exceptions._defaults(this);
  }

  ExceptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messages = $v.messages;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Exceptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Exceptions;
  }

  @override
  void update(void Function(ExceptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Exceptions build() {
    final _$result =
        _$v ?? new _$Exceptions._(messages: messages, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
