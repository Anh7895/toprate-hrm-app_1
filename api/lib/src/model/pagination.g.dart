// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Pagination extends Pagination {
  @override
  final num? total;
  @override
  final num? page;
  @override
  final num? perPage;
  @override
  final num? currentPage;
  @override
  final num? lastPage;
  @override
  final num? from;
  @override
  final num? to;
  @override
  final String? firstPageUrl;
  @override
  final String? lastPageUrl;
  @override
  final String? nextPageUrl;
  @override
  final String? prevPageUrl;
  @override
  final String? path;
  @override
  final BuiltList<JsonObject?>? data;

  factory _$Pagination([void Function(PaginationBuilder)? updates]) =>
      (new PaginationBuilder()..update(updates)).build();

  _$Pagination._(
      {this.total,
      this.page,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.from,
      this.to,
      this.firstPageUrl,
      this.lastPageUrl,
      this.nextPageUrl,
      this.prevPageUrl,
      this.path,
      this.data})
      : super._();

  @override
  Pagination rebuild(void Function(PaginationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginationBuilder toBuilder() => new PaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pagination &&
        total == other.total &&
        page == other.page &&
        perPage == other.perPage &&
        currentPage == other.currentPage &&
        lastPage == other.lastPage &&
        from == other.from &&
        to == other.to &&
        firstPageUrl == other.firstPageUrl &&
        lastPageUrl == other.lastPageUrl &&
        nextPageUrl == other.nextPageUrl &&
        prevPageUrl == other.prevPageUrl &&
        path == other.path &&
        data == other.data;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, total.hashCode),
                                                    page.hashCode),
                                                perPage.hashCode),
                                            currentPage.hashCode),
                                        lastPage.hashCode),
                                    from.hashCode),
                                to.hashCode),
                            firstPageUrl.hashCode),
                        lastPageUrl.hashCode),
                    nextPageUrl.hashCode),
                prevPageUrl.hashCode),
            path.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Pagination')
          ..add('total', total)
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('from', from)
          ..add('to', to)
          ..add('firstPageUrl', firstPageUrl)
          ..add('lastPageUrl', lastPageUrl)
          ..add('nextPageUrl', nextPageUrl)
          ..add('prevPageUrl', prevPageUrl)
          ..add('path', path)
          ..add('data', data))
        .toString();
  }
}

class PaginationBuilder implements Builder<Pagination, PaginationBuilder> {
  _$Pagination? _$v;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  num? _page;
  num? get page => _$this._page;
  set page(num? page) => _$this._page = page;

  num? _perPage;
  num? get perPage => _$this._perPage;
  set perPage(num? perPage) => _$this._perPage = perPage;

  num? _currentPage;
  num? get currentPage => _$this._currentPage;
  set currentPage(num? currentPage) => _$this._currentPage = currentPage;

  num? _lastPage;
  num? get lastPage => _$this._lastPage;
  set lastPage(num? lastPage) => _$this._lastPage = lastPage;

  num? _from;
  num? get from => _$this._from;
  set from(num? from) => _$this._from = from;

  num? _to;
  num? get to => _$this._to;
  set to(num? to) => _$this._to = to;

  String? _firstPageUrl;
  String? get firstPageUrl => _$this._firstPageUrl;
  set firstPageUrl(String? firstPageUrl) => _$this._firstPageUrl = firstPageUrl;

  String? _lastPageUrl;
  String? get lastPageUrl => _$this._lastPageUrl;
  set lastPageUrl(String? lastPageUrl) => _$this._lastPageUrl = lastPageUrl;

  String? _nextPageUrl;
  String? get nextPageUrl => _$this._nextPageUrl;
  set nextPageUrl(String? nextPageUrl) => _$this._nextPageUrl = nextPageUrl;

  String? _prevPageUrl;
  String? get prevPageUrl => _$this._prevPageUrl;
  set prevPageUrl(String? prevPageUrl) => _$this._prevPageUrl = prevPageUrl;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  ListBuilder<JsonObject?>? _data;
  ListBuilder<JsonObject?> get data =>
      _$this._data ??= new ListBuilder<JsonObject?>();
  set data(ListBuilder<JsonObject?>? data) => _$this._data = data;

  PaginationBuilder() {
    Pagination._defaults(this);
  }

  PaginationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _page = $v.page;
      _perPage = $v.perPage;
      _currentPage = $v.currentPage;
      _lastPage = $v.lastPage;
      _from = $v.from;
      _to = $v.to;
      _firstPageUrl = $v.firstPageUrl;
      _lastPageUrl = $v.lastPageUrl;
      _nextPageUrl = $v.nextPageUrl;
      _prevPageUrl = $v.prevPageUrl;
      _path = $v.path;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pagination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Pagination;
  }

  @override
  void update(void Function(PaginationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Pagination build() {
    _$Pagination _$result;
    try {
      _$result = _$v ??
          new _$Pagination._(
              total: total,
              page: page,
              perPage: perPage,
              currentPage: currentPage,
              lastPage: lastPage,
              from: from,
              to: to,
              firstPageUrl: firstPageUrl,
              lastPageUrl: lastPageUrl,
              nextPageUrl: nextPageUrl,
              prevPageUrl: prevPageUrl,
              path: path,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Pagination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
