// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recruitment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Recruitment extends Recruitment {
  @override
  final int? id;
  @override
  final int? companyId;
  @override
  final String? position;
  @override
  final int? quantity;
  @override
  final String? content;
  @override
  final String? requirement;
  @override
  final String? expirationDate;
  @override
  final Company? company;

  factory _$Recruitment([void Function(RecruitmentBuilder)? updates]) =>
      (new RecruitmentBuilder()..update(updates)).build();

  _$Recruitment._(
      {this.id,
      this.companyId,
      this.position,
      this.quantity,
      this.content,
      this.requirement,
      this.expirationDate,
      this.company})
      : super._();

  @override
  Recruitment rebuild(void Function(RecruitmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecruitmentBuilder toBuilder() => new RecruitmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Recruitment &&
        id == other.id &&
        companyId == other.companyId &&
        position == other.position &&
        quantity == other.quantity &&
        content == other.content &&
        requirement == other.requirement &&
        expirationDate == other.expirationDate &&
        company == other.company;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), companyId.hashCode),
                            position.hashCode),
                        quantity.hashCode),
                    content.hashCode),
                requirement.hashCode),
            expirationDate.hashCode),
        company.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Recruitment')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('position', position)
          ..add('quantity', quantity)
          ..add('content', content)
          ..add('requirement', requirement)
          ..add('expirationDate', expirationDate)
          ..add('company', company))
        .toString();
  }
}

class RecruitmentBuilder implements Builder<Recruitment, RecruitmentBuilder> {
  _$Recruitment? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _requirement;
  String? get requirement => _$this._requirement;
  set requirement(String? requirement) => _$this._requirement = requirement;

  String? _expirationDate;
  String? get expirationDate => _$this._expirationDate;
  set expirationDate(String? expirationDate) =>
      _$this._expirationDate = expirationDate;

  CompanyBuilder? _company;
  CompanyBuilder get company => _$this._company ??= new CompanyBuilder();
  set company(CompanyBuilder? company) => _$this._company = company;

  RecruitmentBuilder() {
    Recruitment._defaults(this);
  }

  RecruitmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _position = $v.position;
      _quantity = $v.quantity;
      _content = $v.content;
      _requirement = $v.requirement;
      _expirationDate = $v.expirationDate;
      _company = $v.company?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Recruitment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Recruitment;
  }

  @override
  void update(void Function(RecruitmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Recruitment build() {
    _$Recruitment _$result;
    try {
      _$result = _$v ??
          new _$Recruitment._(
              id: id,
              companyId: companyId,
              position: position,
              quantity: quantity,
              content: content,
              requirement: requirement,
              expirationDate: expirationDate,
              company: _company?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'company';
        _company?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Recruitment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
