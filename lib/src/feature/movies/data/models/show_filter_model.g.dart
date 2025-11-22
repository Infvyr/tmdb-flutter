// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_filter_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetShowFilterModelCollection on Isar {
  IsarCollection<ShowFilterModel> get showFilterModels => this.collection();
}

const ShowFilterModelSchema = CollectionSchema(
  name: r'ShowFilterModel',
  id: 8497571678328126686,
  properties: {
    r'countries': PropertySchema(
      id: 0,
      name: r'countries',
      type: IsarType.stringList,
    ),
    r'endedFrom': PropertySchema(
      id: 1,
      name: r'endedFrom',
      type: IsarType.string,
    ),
    r'endedTo': PropertySchema(
      id: 2,
      name: r'endedTo',
      type: IsarType.string,
    ),
    r'maxRating': PropertySchema(
      id: 3,
      name: r'maxRating',
      type: IsarType.double,
    ),
    r'minRating': PropertySchema(
      id: 4,
      name: r'minRating',
      type: IsarType.double,
    ),
    r'premieredFrom': PropertySchema(
      id: 5,
      name: r'premieredFrom',
      type: IsarType.string,
    ),
    r'premieredTo': PropertySchema(
      id: 6,
      name: r'premieredTo',
      type: IsarType.string,
    ),
    r'sortByValue': PropertySchema(
      id: 7,
      name: r'sortByValue',
      type: IsarType.string,
    ),
    r'sortOrderValue': PropertySchema(
      id: 8,
      name: r'sortOrderValue',
      type: IsarType.string,
    ),
    r'statuses': PropertySchema(
      id: 9,
      name: r'statuses',
      type: IsarType.stringList,
    ),
    r'types': PropertySchema(
      id: 10,
      name: r'types',
      type: IsarType.stringList,
    )
  },
  estimateSize: _showFilterModelEstimateSize,
  serialize: _showFilterModelSerialize,
  deserialize: _showFilterModelDeserialize,
  deserializeProp: _showFilterModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _showFilterModelGetId,
  getLinks: _showFilterModelGetLinks,
  attach: _showFilterModelAttach,
  version: '3.1.0+1',
);

int _showFilterModelEstimateSize(
  ShowFilterModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.countries.length * 3;
  {
    for (var i = 0; i < object.countries.length; i++) {
      final value = object.countries[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.endedFrom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.endedTo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.premieredFrom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.premieredTo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.sortByValue.length * 3;
  bytesCount += 3 + object.sortOrderValue.length * 3;
  bytesCount += 3 + object.statuses.length * 3;
  {
    for (var i = 0; i < object.statuses.length; i++) {
      final value = object.statuses[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.types.length * 3;
  {
    for (var i = 0; i < object.types.length; i++) {
      final value = object.types[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _showFilterModelSerialize(
  ShowFilterModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.countries);
  writer.writeString(offsets[1], object.endedFrom);
  writer.writeString(offsets[2], object.endedTo);
  writer.writeDouble(offsets[3], object.maxRating);
  writer.writeDouble(offsets[4], object.minRating);
  writer.writeString(offsets[5], object.premieredFrom);
  writer.writeString(offsets[6], object.premieredTo);
  writer.writeString(offsets[7], object.sortByValue);
  writer.writeString(offsets[8], object.sortOrderValue);
  writer.writeStringList(offsets[9], object.statuses);
  writer.writeStringList(offsets[10], object.types);
}

ShowFilterModel _showFilterModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShowFilterModel(
    countries: reader.readStringList(offsets[0]) ?? const [],
    endedFrom: reader.readStringOrNull(offsets[1]),
    endedTo: reader.readStringOrNull(offsets[2]),
    maxRating: reader.readDoubleOrNull(offsets[3]),
    minRating: reader.readDoubleOrNull(offsets[4]),
    premieredFrom: reader.readStringOrNull(offsets[5]),
    premieredTo: reader.readStringOrNull(offsets[6]),
    sortByValue: reader.readStringOrNull(offsets[7]) ?? 'name',
    sortOrderValue: reader.readStringOrNull(offsets[8]) ?? 'asc',
    statuses: reader.readStringList(offsets[9]) ?? const [],
    types: reader.readStringList(offsets[10]) ?? const [],
  );
  object.id = id;
  return object;
}

P _showFilterModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? const []) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset) ?? 'name') as P;
    case 8:
      return (reader.readStringOrNull(offset) ?? 'asc') as P;
    case 9:
      return (reader.readStringList(offset) ?? const []) as P;
    case 10:
      return (reader.readStringList(offset) ?? const []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _showFilterModelGetId(ShowFilterModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _showFilterModelGetLinks(ShowFilterModel object) {
  return [];
}

void _showFilterModelAttach(
    IsarCollection<dynamic> col, Id id, ShowFilterModel object) {
  object.id = id;
}

extension ShowFilterModelQueryWhereSort
    on QueryBuilder<ShowFilterModel, ShowFilterModel, QWhere> {
  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ShowFilterModelQueryWhere
    on QueryBuilder<ShowFilterModel, ShowFilterModel, QWhereClause> {
  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterWhereClause> idBetween(
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
}

extension ShowFilterModelQueryFilter
    on QueryBuilder<ShowFilterModel, ShowFilterModel, QFilterCondition> {
  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countries',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'countries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'countries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'countries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'countries',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countries',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'countries',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'countries',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'countries',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'countries',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'countries',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'countries',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      countriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'countries',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endedFrom',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endedFrom',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endedFrom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'endedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'endedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'endedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'endedFrom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endedFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedFromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'endedFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endedTo',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endedTo',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endedTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endedTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endedTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endedTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'endedTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'endedTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'endedTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'endedTo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endedTo',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      endedToIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'endedTo',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
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

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      maxRatingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxRating',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      maxRatingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxRating',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      maxRatingEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxRating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      maxRatingGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxRating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      maxRatingLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxRating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      maxRatingBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxRating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      minRatingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'minRating',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      minRatingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'minRating',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      minRatingEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minRating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      minRatingGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minRating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      minRatingLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minRating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      minRatingBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minRating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'premieredFrom',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'premieredFrom',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'premieredFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'premieredFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'premieredFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'premieredFrom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'premieredFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'premieredFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'premieredFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'premieredFrom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'premieredFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredFromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'premieredFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'premieredTo',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'premieredTo',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'premieredTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'premieredTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'premieredTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'premieredTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'premieredTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'premieredTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'premieredTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'premieredTo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'premieredTo',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      premieredToIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'premieredTo',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortByValueEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sortByValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortByValueGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sortByValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortByValueLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sortByValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortByValueBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sortByValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortByValueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sortByValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortByValueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sortByValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortByValueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sortByValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortByValueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sortByValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortByValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sortByValue',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortByValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sortByValue',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortOrderValueEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sortOrderValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortOrderValueGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sortOrderValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortOrderValueLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sortOrderValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortOrderValueBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sortOrderValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortOrderValueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sortOrderValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortOrderValueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sortOrderValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortOrderValueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sortOrderValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortOrderValueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sortOrderValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortOrderValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sortOrderValue',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      sortOrderValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sortOrderValue',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statuses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'statuses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'statuses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'statuses',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'statuses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'statuses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'statuses',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'statuses',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statuses',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'statuses',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'statuses',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'statuses',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'statuses',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'statuses',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'statuses',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      statusesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'statuses',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'types',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'types',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'types',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'types',
        value: '',
      ));
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterFilterCondition>
      typesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension ShowFilterModelQueryObject
    on QueryBuilder<ShowFilterModel, ShowFilterModel, QFilterCondition> {}

extension ShowFilterModelQueryLinks
    on QueryBuilder<ShowFilterModel, ShowFilterModel, QFilterCondition> {}

extension ShowFilterModelQuerySortBy
    on QueryBuilder<ShowFilterModel, ShowFilterModel, QSortBy> {
  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByEndedFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedFrom', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByEndedFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedFrom', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy> sortByEndedTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedTo', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByEndedToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedTo', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByMaxRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxRating', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByMaxRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxRating', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByMinRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minRating', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByMinRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minRating', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByPremieredFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premieredFrom', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByPremieredFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premieredFrom', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByPremieredTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premieredTo', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortByPremieredToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premieredTo', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortBySortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortByValue', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortBySortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortByValue', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortBySortOrderValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrderValue', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      sortBySortOrderValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrderValue', Sort.desc);
    });
  }
}

extension ShowFilterModelQuerySortThenBy
    on QueryBuilder<ShowFilterModel, ShowFilterModel, QSortThenBy> {
  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByEndedFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedFrom', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByEndedFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedFrom', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy> thenByEndedTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedTo', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByEndedToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endedTo', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByMaxRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxRating', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByMaxRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxRating', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByMinRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minRating', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByMinRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minRating', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByPremieredFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premieredFrom', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByPremieredFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premieredFrom', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByPremieredTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premieredTo', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenByPremieredToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premieredTo', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenBySortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortByValue', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenBySortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortByValue', Sort.desc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenBySortOrderValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrderValue', Sort.asc);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QAfterSortBy>
      thenBySortOrderValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrderValue', Sort.desc);
    });
  }
}

extension ShowFilterModelQueryWhereDistinct
    on QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct> {
  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct>
      distinctByCountries() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countries');
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct> distinctByEndedFrom(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endedFrom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct> distinctByEndedTo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endedTo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct>
      distinctByMaxRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxRating');
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct>
      distinctByMinRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minRating');
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct>
      distinctByPremieredFrom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'premieredFrom',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct>
      distinctByPremieredTo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'premieredTo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct>
      distinctBySortByValue({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sortByValue', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct>
      distinctBySortOrderValue({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sortOrderValue',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct>
      distinctByStatuses() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statuses');
    });
  }

  QueryBuilder<ShowFilterModel, ShowFilterModel, QDistinct> distinctByTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'types');
    });
  }
}

extension ShowFilterModelQueryProperty
    on QueryBuilder<ShowFilterModel, ShowFilterModel, QQueryProperty> {
  QueryBuilder<ShowFilterModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ShowFilterModel, List<String>, QQueryOperations>
      countriesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countries');
    });
  }

  QueryBuilder<ShowFilterModel, String?, QQueryOperations> endedFromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endedFrom');
    });
  }

  QueryBuilder<ShowFilterModel, String?, QQueryOperations> endedToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endedTo');
    });
  }

  QueryBuilder<ShowFilterModel, double?, QQueryOperations> maxRatingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxRating');
    });
  }

  QueryBuilder<ShowFilterModel, double?, QQueryOperations> minRatingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minRating');
    });
  }

  QueryBuilder<ShowFilterModel, String?, QQueryOperations>
      premieredFromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'premieredFrom');
    });
  }

  QueryBuilder<ShowFilterModel, String?, QQueryOperations>
      premieredToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'premieredTo');
    });
  }

  QueryBuilder<ShowFilterModel, String, QQueryOperations>
      sortByValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sortByValue');
    });
  }

  QueryBuilder<ShowFilterModel, String, QQueryOperations>
      sortOrderValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sortOrderValue');
    });
  }

  QueryBuilder<ShowFilterModel, List<String>, QQueryOperations>
      statusesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statuses');
    });
  }

  QueryBuilder<ShowFilterModel, List<String>, QQueryOperations>
      typesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'types');
    });
  }
}
