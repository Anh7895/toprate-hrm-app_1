// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ci_recruitment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CIRecruitment extends CIRecruitment {
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

  factory _$CIRecruitment([void Function(CIRecruitmentBuilder)? updates]) =>
      (new CIRecruitmentBuilder()..update(updates)).build();

  _$CIRecruitment._(
      {this.companyId,
      this.position,
      this.quantity,
      this.content,
      this.requirement,
      this.expirationDate})
      : super._();

  @override
  CIRecruitment rebuild(void Function(CIRecruitmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CIRecruitmentBuilder toBuilder() => new CIRecruitmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CIRecruitment &&
        companyId == other.companyId &&
        position == other.position &&
        quantity == other.quantity &&
        content == other.content &&
        requirement == other.requirement &&
        expirationDate == other.expirationDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, companyId.hashCode), position.hashCode),
                    quantity.hashCode),
                content.hashCode),
            requirement.hashCode),
        expirationDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CIRecruitment')
          ..add('companyId', companyId)
          ..add('position', position)
          ..add('quantity', quantity)
          ..add('content', content)
          ..add('requirement', requirement)
          ..add('expirationDate', expirationDate))
        .toString();
  }
}

class CIRecruitmentBuilder
    implements Builder<CIRecruitment, CIRecruitmentBuilder> {
  _$CIRecruitment? _$v;

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

  CIRecruitmentBuilder() {
    CIRecruitment._defaults(this);
  }

  CIRecruitmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyId = $v.companyId;
      _position = $v.position;
      _quantity = $v.quantity;
      _content = $v.content;
      _requirement = $v.requirement;
      _expirationDate = $v.expirationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CIRecruitment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CIRecruitment;
  }

  @override
  void update(void Function(CIRecruitmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CIRecruitment build() {
    final _$result = _$v ??
        new _$CIRecruitment._(
            companyId: companyId,
            position: position,
            quantity: quantity,
            content: content,
            requirement: requirement,
            expirationDate: expirationDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
