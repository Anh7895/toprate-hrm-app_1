// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Template extends Template {
  @override
  final String? name;
  @override
  final String? subject;
  @override
  final String? content;
  @override
  final String? type;
  @override
  final String? method;
  @override
  final String? status;

  factory _$Template([void Function(TemplateBuilder)? updates]) =>
      (new TemplateBuilder()..update(updates)).build();

  _$Template._(
      {this.name,
      this.subject,
      this.content,
      this.type,
      this.method,
      this.status})
      : super._();

  @override
  Template rebuild(void Function(TemplateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateBuilder toBuilder() => new TemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Template &&
        name == other.name &&
        subject == other.subject &&
        content == other.content &&
        type == other.type &&
        method == other.method &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), subject.hashCode),
                    content.hashCode),
                type.hashCode),
            method.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Template')
          ..add('name', name)
          ..add('subject', subject)
          ..add('content', content)
          ..add('type', type)
          ..add('method', method)
          ..add('status', status))
        .toString();
  }
}

class TemplateBuilder implements Builder<Template, TemplateBuilder> {
  _$Template? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  TemplateBuilder() {
    Template._defaults(this);
  }

  TemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _subject = $v.subject;
      _content = $v.content;
      _type = $v.type;
      _method = $v.method;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Template other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Template;
  }

  @override
  void update(void Function(TemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Template build() {
    final _$result = _$v ??
        new _$Template._(
            name: name,
            subject: subject,
            content: content,
            type: type,
            method: method,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
