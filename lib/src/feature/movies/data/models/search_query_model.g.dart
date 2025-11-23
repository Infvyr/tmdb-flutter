// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSearchQueryModelCollection on Isar {
  IsarCollection<SearchQueryModel> get searchQueryModels => this.collection();
}

const SearchQueryModelSchema = CollectionSchema(
  name: r'SearchQueryModel',
  id: -4216197884932995467,
  properties: {
    r'query': PropertySchema(id: 0, name: r'query', type: IsarType.string),
    r'searchByGenre': PropertySchema(id: 1, name: r'searchByGenre', type: IsarType.bool),
    r'searchByName': PropertySchema(id: 2, name: r'searchByName', type: IsarType.bool),
    r'searchByNetwork': PropertySchema(id: 3, name: r'searchByNetwork', type: IsarType.bool),
  },
  estimateSize: _searchQueryModelEstimateSize,
  serialize: _searchQueryModelSerialize,
  deserialize: _searchQueryModelDeserialize,
  deserializeProp: _searchQueryModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _searchQueryModelGetId,
  getLinks: _searchQueryModelGetLinks,
  attach: _searchQueryModelAttach,
  version: '3.1.0+1',
);

int _searchQueryModelEstimateSize(
  SearchQueryModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.query.length * 3;
  return bytesCount;
}

void _searchQueryModelSerialize(
  SearchQueryModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.query);
  writer.writeBool(offsets[1], object.searchByGenre);
  writer.writeBool(offsets[2], object.searchByName);
  writer.writeBool(offsets[3], object.searchByNetwork);
}

SearchQueryModel _searchQueryModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SearchQueryModel(
    query: reader.readString(offsets[0]),
    searchByGenre: reader.readBoolOrNull(offsets[1]) ?? false,
    searchByName: reader.readBoolOrNull(offsets[2]) ?? true,
    searchByNetwork: reader.readBoolOrNull(offsets[3]) ?? false,
  );
  object.id = id;
  return object;
}

P _searchQueryModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 2:
      return (reader.readBoolOrNull(offset) ?? true) as P;
    case 3:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _searchQueryModelGetId(SearchQueryModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _searchQueryModelGetLinks(SearchQueryModel object) {
  return [];
}

void _searchQueryModelAttach(IsarCollection<dynamic> col, Id id, SearchQueryModel object) {
  object.id = id;
}

extension SearchQueryModelQueryWhereSort
    on QueryBuilder<SearchQueryModel, SearchQueryModel, QWhere> {
  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SearchQueryModelQueryWhere
    on QueryBuilder<SearchQueryModel, SearchQueryModel, QWhereClause> {
  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IdWhereClause.lessThan(upper: id, includeUpper: false))
            .addWhereClause(IdWhereClause.greaterThan(lower: id, includeLower: false));
      } else {
        return query
            .addWhereClause(IdWhereClause.greaterThan(lower: id, includeLower: false))
            .addWhereClause(IdWhereClause.lessThan(upper: id, includeUpper: false));
      }
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.greaterThan(lower: id, includeLower: include));
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.lessThan(upper: id, includeUpper: include));
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension SearchQueryModelQueryFilter
    on QueryBuilder<SearchQueryModel, SearchQueryModel, QFilterCondition> {
  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'id', value: value));
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(include: include, property: r'id', value: value),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(include: include, property: r'id', value: value),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> queryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'query', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> queryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'query',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> queryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'query',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> queryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'query',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> queryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'query', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> queryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'query', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> queryContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'query', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> queryMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'query',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> queryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'query', value: ''));
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> queryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'query', value: ''));
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> searchByGenreEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'searchByGenre', value: value),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> searchByNameEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'searchByName', value: value),
      );
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterFilterCondition> searchByNetworkEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'searchByNetwork', value: value),
      );
    });
  }
}

extension SearchQueryModelQueryObject
    on QueryBuilder<SearchQueryModel, SearchQueryModel, QFilterCondition> {}

extension SearchQueryModelQueryLinks
    on QueryBuilder<SearchQueryModel, SearchQueryModel, QFilterCondition> {}

extension SearchQueryModelQuerySortBy on QueryBuilder<SearchQueryModel, SearchQueryModel, QSortBy> {
  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> sortByQuery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'query', Sort.asc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> sortByQueryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'query', Sort.desc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> sortBySearchByGenre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByGenre', Sort.asc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> sortBySearchByGenreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByGenre', Sort.desc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> sortBySearchByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByName', Sort.asc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> sortBySearchByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByName', Sort.desc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> sortBySearchByNetwork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByNetwork', Sort.asc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> sortBySearchByNetworkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByNetwork', Sort.desc);
    });
  }
}

extension SearchQueryModelQuerySortThenBy
    on QueryBuilder<SearchQueryModel, SearchQueryModel, QSortThenBy> {
  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> thenByQuery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'query', Sort.asc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> thenByQueryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'query', Sort.desc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> thenBySearchByGenre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByGenre', Sort.asc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> thenBySearchByGenreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByGenre', Sort.desc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> thenBySearchByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByName', Sort.asc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> thenBySearchByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByName', Sort.desc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> thenBySearchByNetwork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByNetwork', Sort.asc);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QAfterSortBy> thenBySearchByNetworkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchByNetwork', Sort.desc);
    });
  }
}

extension SearchQueryModelQueryWhereDistinct
    on QueryBuilder<SearchQueryModel, SearchQueryModel, QDistinct> {
  QueryBuilder<SearchQueryModel, SearchQueryModel, QDistinct> distinctByQuery({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'query', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QDistinct> distinctBySearchByGenre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchByGenre');
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QDistinct> distinctBySearchByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchByName');
    });
  }

  QueryBuilder<SearchQueryModel, SearchQueryModel, QDistinct> distinctBySearchByNetwork() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchByNetwork');
    });
  }
}

extension SearchQueryModelQueryProperty
    on QueryBuilder<SearchQueryModel, SearchQueryModel, QQueryProperty> {
  QueryBuilder<SearchQueryModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SearchQueryModel, String, QQueryOperations> queryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'query');
    });
  }

  QueryBuilder<SearchQueryModel, bool, QQueryOperations> searchByGenreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchByGenre');
    });
  }

  QueryBuilder<SearchQueryModel, bool, QQueryOperations> searchByNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchByName');
    });
  }

  QueryBuilder<SearchQueryModel, bool, QQueryOperations> searchByNetworkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchByNetwork');
    });
  }
}
