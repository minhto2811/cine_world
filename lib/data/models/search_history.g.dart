// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSearchHistoryCollection on Isar {
  IsarCollection<SearchHistory> get searchHistories => this.collection();
}

const SearchHistorySchema = CollectionSchema(
  name: r'SearchHistory',
  id: -4204570823138025228,
  properties: {
    r'keyword': PropertySchema(
      id: 0,
      name: r'keyword',
      type: IsarType.string,
    )
  },
  estimateSize: _searchHistoryEstimateSize,
  serialize: _searchHistorySerialize,
  deserialize: _searchHistoryDeserialize,
  deserializeProp: _searchHistoryDeserializeProp,
  idName: r'id',
  indexes: {
    r'keyword': IndexSchema(
      id: 5840366397742622134,
      name: r'keyword',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'keyword',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _searchHistoryGetId,
  getLinks: _searchHistoryGetLinks,
  attach: _searchHistoryAttach,
  version: '3.1.0+1',
);

int _searchHistoryEstimateSize(
  SearchHistory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.keyword.length * 3;
  return bytesCount;
}

void _searchHistorySerialize(
  SearchHistory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.keyword);
}

SearchHistory _searchHistoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SearchHistory(
    id: id,
    keyword: reader.readString(offsets[0]),
  );
  return object;
}

P _searchHistoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _searchHistoryGetId(SearchHistory object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _searchHistoryGetLinks(SearchHistory object) {
  return [];
}

void _searchHistoryAttach(
    IsarCollection<dynamic> col, Id id, SearchHistory object) {}

extension SearchHistoryByIndex on IsarCollection<SearchHistory> {
  Future<SearchHistory?> getByKeyword(String keyword) {
    return getByIndex(r'keyword', [keyword]);
  }

  SearchHistory? getByKeywordSync(String keyword) {
    return getByIndexSync(r'keyword', [keyword]);
  }

  Future<bool> deleteByKeyword(String keyword) {
    return deleteByIndex(r'keyword', [keyword]);
  }

  bool deleteByKeywordSync(String keyword) {
    return deleteByIndexSync(r'keyword', [keyword]);
  }

  Future<List<SearchHistory?>> getAllByKeyword(List<String> keywordValues) {
    final values = keywordValues.map((e) => [e]).toList();
    return getAllByIndex(r'keyword', values);
  }

  List<SearchHistory?> getAllByKeywordSync(List<String> keywordValues) {
    final values = keywordValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'keyword', values);
  }

  Future<int> deleteAllByKeyword(List<String> keywordValues) {
    final values = keywordValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'keyword', values);
  }

  int deleteAllByKeywordSync(List<String> keywordValues) {
    final values = keywordValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'keyword', values);
  }

  Future<Id> putByKeyword(SearchHistory object) {
    return putByIndex(r'keyword', object);
  }

  Id putByKeywordSync(SearchHistory object, {bool saveLinks = true}) {
    return putByIndexSync(r'keyword', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByKeyword(List<SearchHistory> objects) {
    return putAllByIndex(r'keyword', objects);
  }

  List<Id> putAllByKeywordSync(List<SearchHistory> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'keyword', objects, saveLinks: saveLinks);
  }
}

extension SearchHistoryQueryWhereSort
    on QueryBuilder<SearchHistory, SearchHistory, QWhere> {
  QueryBuilder<SearchHistory, SearchHistory, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhere> anyKeyword() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'keyword'),
      );
    });
  }
}

extension SearchHistoryQueryWhere
    on QueryBuilder<SearchHistory, SearchHistory, QWhereClause> {
  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> keywordEqualTo(
      String keyword) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'keyword',
        value: [keyword],
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause>
      keywordNotEqualTo(String keyword) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'keyword',
              lower: [],
              upper: [keyword],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'keyword',
              lower: [keyword],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'keyword',
              lower: [keyword],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'keyword',
              lower: [],
              upper: [keyword],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause>
      keywordGreaterThan(
    String keyword, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'keyword',
        lower: [keyword],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> keywordLessThan(
    String keyword, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'keyword',
        lower: [],
        upper: [keyword],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause> keywordBetween(
    String lowerKeyword,
    String upperKeyword, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'keyword',
        lower: [lowerKeyword],
        includeLower: includeLower,
        upper: [upperKeyword],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause>
      keywordStartsWith(String KeywordPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'keyword',
        lower: [KeywordPrefix],
        upper: ['$KeywordPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause>
      keywordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'keyword',
        value: [''],
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterWhereClause>
      keywordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'keyword',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'keyword',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'keyword',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'keyword',
              upper: [''],
            ));
      }
    });
  }
}

extension SearchHistoryQueryFilter
    on QueryBuilder<SearchHistory, SearchHistory, QFilterCondition> {
  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      keywordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      keywordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      keywordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      keywordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'keyword',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      keywordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      keywordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      keywordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      keywordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'keyword',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      keywordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keyword',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterFilterCondition>
      keywordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'keyword',
        value: '',
      ));
    });
  }
}

extension SearchHistoryQueryObject
    on QueryBuilder<SearchHistory, SearchHistory, QFilterCondition> {}

extension SearchHistoryQueryLinks
    on QueryBuilder<SearchHistory, SearchHistory, QFilterCondition> {}

extension SearchHistoryQuerySortBy
    on QueryBuilder<SearchHistory, SearchHistory, QSortBy> {
  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> sortByKeyword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyword', Sort.asc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> sortByKeywordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyword', Sort.desc);
    });
  }
}

extension SearchHistoryQuerySortThenBy
    on QueryBuilder<SearchHistory, SearchHistory, QSortThenBy> {
  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> thenByKeyword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyword', Sort.asc);
    });
  }

  QueryBuilder<SearchHistory, SearchHistory, QAfterSortBy> thenByKeywordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyword', Sort.desc);
    });
  }
}

extension SearchHistoryQueryWhereDistinct
    on QueryBuilder<SearchHistory, SearchHistory, QDistinct> {
  QueryBuilder<SearchHistory, SearchHistory, QDistinct> distinctByKeyword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'keyword', caseSensitive: caseSensitive);
    });
  }
}

extension SearchHistoryQueryProperty
    on QueryBuilder<SearchHistory, SearchHistory, QQueryProperty> {
  QueryBuilder<SearchHistory, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SearchHistory, String, QQueryOperations> keywordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'keyword');
    });
  }
}
