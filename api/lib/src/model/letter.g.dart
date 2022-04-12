// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'letter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Letter extends Letter {
  @override
  final int? id;
  @override
  final String? type;
  @override
  final String? content;
  @override
  final String? fromDate;
  @override
  final String? toDate;
  @override
  final String? status;
  @override
  final int? companyId;
  @override
  final int? userId;
  @override
  final String? createdAt;
  @override
  final BuiltList<Company>? company;
  @override
  final BuiltList<User>? user;

  factory _$Letter([void Function(LetterBuilder)? updates]) =>
      (new LetterBuilder()..update(updates)).build();

  _$Letter._(
      {this.id,
      this.type,
      this.content,
      this.fromDate,
      this.toDate,
      this.status,
      this.companyId,
      this.userId,
      this.createdAt,
      this.company,
      this.user})
      : super._();

  @override
  Letter rebuild(void Function(LetterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LetterBuilder toBuilder() => new LetterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Letter &&
        id == other.id &&
        type == other.type &&
        content == other.content &&
        fromDate == other.fromDate &&
        toDate == other.toDate &&
        status == other.status &&
        companyId == other.companyId &&
        userId == other.userId &&
        createdAt == other.createdAt &&
        company == other.company &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), type.hashCode),
                                        content.hashCode),
                                    fromDate.hashCode),
                                toDate.hashCode),
                            status.hashCode),
                        companyId.hashCode),
                    userId.hashCode),
                createdAt.hashCode),
            company.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Letter')
          ..add('id', id)
          ..add('type', type)
          ..add('content', content)
          ..add('fromDate', fromDate)
          ..add('toDate', toDate)
          ..add('status', status)
          ..add('companyId', companyId)
          ..add('userId', userId)
          ..add('createdAt', createdAt)
          ..add('company', company)
          ..add('user', user))
        .toString();
  }
}

class LetterBuilder implements Builder<Letter, LetterBuilder> {
  _$Letter? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _fromDate;
  String? get fromDate => _$this._fromDate;
  set fromDate(String? fromDate) => _$this._fromDate = fromDate;

  String? _toDate;
  String? get toDate => _$this._toDate;
  set toDate(String? toDate) => _$this._toDate = toDate;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<Company>? _company;
  ListBuilder<Company> get company =>
      _$this._company ??= new ListBuilder<Company>();
  set company(ListBuilder<Company>? company) => _$this._company = company;

  ListBuilder<User>? _user;
  ListBuilder<User> get user => _$this._user ??= new ListBuilder<User>();
  set user(ListBuilder<User>? user) => _$this._user = user;

  LetterBuilder() {
    Letter._defaults(this);
  }

  LetterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _content = $v.content;
      _fromDate = $v.fromDate;
      _toDate = $v.toDate;
      _status = $v.status;
      _companyId = $v.companyId;
      _userId = $v.userId;
      _createdAt = $v.createdAt;
      _company = $v.company?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Letter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Letter;
  }

  @override
  void update(void Function(LetterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Letter build() {
    _$Letter _$result;
    try {
      _$result = _$v ??
          new _$Letter._(
              id: id,
              type: type,
              content: content,
              fromDate: fromDate,
              toDate: toDate,
              status: status,
              companyId: companyId,
              userId: userId,
              createdAt: createdAt,
              company: _company?.build(),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'company';
        _company?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Letter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
