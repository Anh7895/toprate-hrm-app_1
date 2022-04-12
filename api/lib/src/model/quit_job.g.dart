// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quit_job.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuitJob extends QuitJob {
  @override
  final String? content;
  @override
  final String? fromDate;

  factory _$QuitJob([void Function(QuitJobBuilder)? updates]) =>
      (new QuitJobBuilder()..update(updates)).build();

  _$QuitJob._({this.content, this.fromDate}) : super._();

  @override
  QuitJob rebuild(void Function(QuitJobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuitJobBuilder toBuilder() => new QuitJobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuitJob &&
        content == other.content &&
        fromDate == other.fromDate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, content.hashCode), fromDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QuitJob')
          ..add('content', content)
          ..add('fromDate', fromDate))
        .toString();
  }
}

class QuitJobBuilder implements Builder<QuitJob, QuitJobBuilder> {
  _$QuitJob? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _fromDate;
  String? get fromDate => _$this._fromDate;
  set fromDate(String? fromDate) => _$this._fromDate = fromDate;

  QuitJobBuilder() {
    QuitJob._defaults(this);
  }

  QuitJobBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _fromDate = $v.fromDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuitJob other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuitJob;
  }

  @override
  void update(void Function(QuitJobBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuitJob build() {
    final _$result =
        _$v ?? new _$QuitJob._(content: content, fromDate: fromDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
