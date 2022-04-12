//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pagination.g.dart';

/// Pagination
///
/// Properties:
/// * [total] 
/// * [page] 
/// * [perPage] 
/// * [currentPage] 
/// * [lastPage] 
/// * [from] 
/// * [to] 
/// * [firstPageUrl] 
/// * [lastPageUrl] 
/// * [nextPageUrl] 
/// * [prevPageUrl] 
/// * [path] 
/// * [data] 
abstract class Pagination implements Built<Pagination, PaginationBuilder> {
    @BuiltValueField(wireName: r'total')
    num? get total;

    @BuiltValueField(wireName: r'page')
    num? get page;

    @BuiltValueField(wireName: r'per_page')
    num? get perPage;

    @BuiltValueField(wireName: r'current_page')
    num? get currentPage;

    @BuiltValueField(wireName: r'last_page')
    num? get lastPage;

    @BuiltValueField(wireName: r'from')
    num? get from;

    @BuiltValueField(wireName: r'to')
    num? get to;

    @BuiltValueField(wireName: r'first_page_url')
    String? get firstPageUrl;

    @BuiltValueField(wireName: r'last_page_url')
    String? get lastPageUrl;

    @BuiltValueField(wireName: r'next_page_url')
    String? get nextPageUrl;

    @BuiltValueField(wireName: r'prev_page_url')
    String? get prevPageUrl;

    @BuiltValueField(wireName: r'path')
    String? get path;

    @BuiltValueField(wireName: r'data')
    BuiltList<JsonObject?>? get data;

    Pagination._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PaginationBuilder b) => b
        ..total = 1
        ..page = 1
        ..perPage = 10
        ..currentPage = 1
        ..from = 1
        ..to = 1;

    factory Pagination([void updates(PaginationBuilder b)]) = _$Pagination;

    @BuiltValueSerializer(custom: true)
    static Serializer<Pagination> get serializer => _$PaginationSerializer();
}

class _$PaginationSerializer implements StructuredSerializer<Pagination> {
    @override
    final Iterable<Type> types = const [Pagination, _$Pagination];

    @override
    final String wireName = r'Pagination';

    @override
    Iterable<Object?> serialize(Serializers serializers, Pagination object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.total != null) {
            result
                ..add(r'total')
                ..add(serializers.serialize(object.total,
                    specifiedType: const FullType(num)));
        }
        if (object.page != null) {
            result
                ..add(r'page')
                ..add(serializers.serialize(object.page,
                    specifiedType: const FullType(num)));
        }
        if (object.perPage != null) {
            result
                ..add(r'per_page')
                ..add(serializers.serialize(object.perPage,
                    specifiedType: const FullType(num)));
        }
        if (object.currentPage != null) {
            result
                ..add(r'current_page')
                ..add(serializers.serialize(object.currentPage,
                    specifiedType: const FullType(num)));
        }
        if (object.lastPage != null) {
            result
                ..add(r'last_page')
                ..add(serializers.serialize(object.lastPage,
                    specifiedType: const FullType(num)));
        }
        if (object.from != null) {
            result
                ..add(r'from')
                ..add(serializers.serialize(object.from,
                    specifiedType: const FullType(num)));
        }
        if (object.to != null) {
            result
                ..add(r'to')
                ..add(serializers.serialize(object.to,
                    specifiedType: const FullType(num)));
        }
        if (object.firstPageUrl != null) {
            result
                ..add(r'first_page_url')
                ..add(serializers.serialize(object.firstPageUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.lastPageUrl != null) {
            result
                ..add(r'last_page_url')
                ..add(serializers.serialize(object.lastPageUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.nextPageUrl != null) {
            result
                ..add(r'next_page_url')
                ..add(serializers.serialize(object.nextPageUrl,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.prevPageUrl != null) {
            result
                ..add(r'prev_page_url')
                ..add(serializers.serialize(object.prevPageUrl,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.path != null) {
            result
                ..add(r'path')
                ..add(serializers.serialize(object.path,
                    specifiedType: const FullType(String)));
        }
        if (object.data != null) {
            result
                ..add(r'data')
                ..add(serializers.serialize(object.data,
                    specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)])));
        }
        return result;
    }

    @override
    Pagination deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PaginationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'total':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.total = valueDes;
                    break;
                case r'page':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.page = valueDes;
                    break;
                case r'per_page':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.perPage = valueDes;
                    break;
                case r'current_page':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.currentPage = valueDes;
                    break;
                case r'last_page':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.lastPage = valueDes;
                    break;
                case r'from':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.from = valueDes;
                    break;
                case r'to':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.to = valueDes;
                    break;
                case r'first_page_url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.firstPageUrl = valueDes;
                    break;
                case r'last_page_url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.lastPageUrl = valueDes;
                    break;
                case r'next_page_url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.nextPageUrl = valueDes;
                    break;
                case r'prev_page_url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.prevPageUrl = valueDes;
                    break;
                case r'path':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.path = valueDes;
                    break;
                case r'data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)])) as BuiltList<JsonObject?>;
                    result.data.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

