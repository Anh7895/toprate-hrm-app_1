// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Project extends Project {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? desc;
  @override
  final String? status;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String? companyId;

  factory _$Project([void Function(ProjectBuilder)? updates]) =>
      (new ProjectBuilder()..update(updates)).build();

  _$Project._(
      {this.id,
      this.name,
      this.type,
      this.desc,
      this.status,
      this.startDate,
      this.endDate,
      this.companyId})
      : super._();

  @override
  Project rebuild(void Function(ProjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBuilder toBuilder() => new ProjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Project &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        desc == other.desc &&
        status == other.status &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        companyId == other.companyId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            type.hashCode),
                        desc.hashCode),
                    status.hashCode),
                startDate.hashCode),
            endDate.hashCode),
        companyId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Project')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('desc', desc)
          ..add('status', status)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('companyId', companyId))
        .toString();
  }
}

class ProjectBuilder implements Builder<Project, ProjectBuilder> {
  _$Project? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(String? companyId) => _$this._companyId = companyId;

  ProjectBuilder() {
    Project._defaults(this);
  }

  ProjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _desc = $v.desc;
      _status = $v.status;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _companyId = $v.companyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Project other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Project;
  }

  @override
  void update(void Function(ProjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Project build() {
    final _$result = _$v ??
        new _$Project._(
            id: id,
            name: name,
            type: type,
            desc: desc,
            status: status,
            startDate: startDate,
            endDate: endDate,
            companyId: companyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
