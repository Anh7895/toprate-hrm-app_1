// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_auth_token_package.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3AuthTokenPackage extends S3AuthTokenPackage {
  @override
  final String? region;
  @override
  final String? bucket;

  factory _$S3AuthTokenPackage(
          [void Function(S3AuthTokenPackageBuilder)? updates]) =>
      (new S3AuthTokenPackageBuilder()..update(updates)).build();

  _$S3AuthTokenPackage._({this.region, this.bucket}) : super._();

  @override
  S3AuthTokenPackage rebuild(
          void Function(S3AuthTokenPackageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3AuthTokenPackageBuilder toBuilder() =>
      new S3AuthTokenPackageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3AuthTokenPackage &&
        region == other.region &&
        bucket == other.bucket;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, region.hashCode), bucket.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('S3AuthTokenPackage')
          ..add('region', region)
          ..add('bucket', bucket))
        .toString();
  }
}

class S3AuthTokenPackageBuilder
    implements Builder<S3AuthTokenPackage, S3AuthTokenPackageBuilder> {
  _$S3AuthTokenPackage? _$v;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  S3AuthTokenPackageBuilder() {
    S3AuthTokenPackage._defaults(this);
  }

  S3AuthTokenPackageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _region = $v.region;
      _bucket = $v.bucket;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3AuthTokenPackage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3AuthTokenPackage;
  }

  @override
  void update(void Function(S3AuthTokenPackageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$S3AuthTokenPackage build() {
    final _$result =
        _$v ?? new _$S3AuthTokenPackage._(region: region, bucket: bucket);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
