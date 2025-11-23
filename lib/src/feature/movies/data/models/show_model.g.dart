// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetShowModelCollection on Isar {
  IsarCollection<ShowModel> get showModels => this.collection();
}

const ShowModelSchema = CollectionSchema(
  name: r'ShowModel',
  id: 4048248295304974498,
  properties: {
    r'averageRuntime': PropertySchema(id: 0, name: r'averageRuntime', type: IsarType.long),
    r'ended': PropertySchema(id: 1, name: r'ended', type: IsarType.string),
    r'externals': PropertySchema(
      id: 2,
      name: r'externals',
      type: IsarType.object,
      target: r'ShowExternals',
    ),
    r'genres': PropertySchema(id: 3, name: r'genres', type: IsarType.stringList),
    r'image': PropertySchema(id: 4, name: r'image', type: IsarType.object, target: r'ShowImage'),
    r'language': PropertySchema(id: 5, name: r'language', type: IsarType.string),
    r'links': PropertySchema(id: 6, name: r'links', type: IsarType.object, target: r'ShowLinks'),
    r'name': PropertySchema(id: 7, name: r'name', type: IsarType.string),
    r'network': PropertySchema(
      id: 8,
      name: r'network',
      type: IsarType.object,
      target: r'ShowNetwork',
    ),
    r'premiered': PropertySchema(id: 9, name: r'premiered', type: IsarType.string),
    r'rating': PropertySchema(
      id: 10,
      name: r'rating',
      type: IsarType.object,
      target: r'ShowRating',
    ),
    r'runtime': PropertySchema(id: 11, name: r'runtime', type: IsarType.long),
    r'schedule': PropertySchema(
      id: 12,
      name: r'schedule',
      type: IsarType.object,
      target: r'ShowSchedule',
    ),
    r'showId': PropertySchema(id: 13, name: r'showId', type: IsarType.long),
    r'status': PropertySchema(id: 14, name: r'status', type: IsarType.string),
    r'summary': PropertySchema(id: 15, name: r'summary', type: IsarType.string),
    r'type': PropertySchema(id: 16, name: r'type', type: IsarType.string),
    r'url': PropertySchema(id: 17, name: r'url', type: IsarType.string),
  },
  estimateSize: _showModelEstimateSize,
  serialize: _showModelSerialize,
  deserialize: _showModelDeserialize,
  deserializeProp: _showModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ShowRating': ShowRatingSchema,
    r'ShowNetwork': ShowNetworkSchema,
    r'Country': CountrySchema,
    r'ShowExternals': ShowExternalsSchema,
    r'ShowImage': ShowImageSchema,
    r'ShowLinks': ShowLinksSchema,
    r'ShowSchedule': ShowScheduleSchema,
  },
  getId: _showModelGetId,
  getLinks: _showModelGetLinks,
  attach: _showModelAttach,
  version: '3.1.0+1',
);

int _showModelEstimateSize(ShowModel object, List<int> offsets, Map<Type, List<int>> allOffsets) {
  var bytesCount = offsets.last;
  {
    final value = object.ended;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.externals;
    if (value != null) {
      bytesCount +=
          3 + ShowExternalsSchema.estimateSize(value, allOffsets[ShowExternals]!, allOffsets);
    }
  }
  bytesCount += 3 + object.genres.length * 3;
  {
    for (var i = 0; i < object.genres.length; i++) {
      final value = object.genres[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + ShowImageSchema.estimateSize(value, allOffsets[ShowImage]!, allOffsets);
    }
  }
  bytesCount += 3 + object.language.length * 3;
  {
    final value = object.links;
    if (value != null) {
      bytesCount += 3 + ShowLinksSchema.estimateSize(value, allOffsets[ShowLinks]!, allOffsets);
    }
  }
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.network;
    if (value != null) {
      bytesCount += 3 + ShowNetworkSchema.estimateSize(value, allOffsets[ShowNetwork]!, allOffsets);
    }
  }
  {
    final value = object.premiered;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.rating;
    if (value != null) {
      bytesCount += 3 + ShowRatingSchema.estimateSize(value, allOffsets[ShowRating]!, allOffsets);
    }
  }
  {
    final value = object.schedule;
    if (value != null) {
      bytesCount +=
          3 + ShowScheduleSchema.estimateSize(value, allOffsets[ShowSchedule]!, allOffsets);
    }
  }
  bytesCount += 3 + object.status.length * 3;
  {
    final value = object.summary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _showModelSerialize(
  ShowModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.averageRuntime);
  writer.writeString(offsets[1], object.ended);
  writer.writeObject<ShowExternals>(
    offsets[2],
    allOffsets,
    ShowExternalsSchema.serialize,
    object.externals,
  );
  writer.writeStringList(offsets[3], object.genres);
  writer.writeObject<ShowImage>(offsets[4], allOffsets, ShowImageSchema.serialize, object.image);
  writer.writeString(offsets[5], object.language);
  writer.writeObject<ShowLinks>(offsets[6], allOffsets, ShowLinksSchema.serialize, object.links);
  writer.writeString(offsets[7], object.name);
  writer.writeObject<ShowNetwork>(
    offsets[8],
    allOffsets,
    ShowNetworkSchema.serialize,
    object.network,
  );
  writer.writeString(offsets[9], object.premiered);
  writer.writeObject<ShowRating>(
    offsets[10],
    allOffsets,
    ShowRatingSchema.serialize,
    object.rating,
  );
  writer.writeLong(offsets[11], object.runtime);
  writer.writeObject<ShowSchedule>(
    offsets[12],
    allOffsets,
    ShowScheduleSchema.serialize,
    object.schedule,
  );
  writer.writeLong(offsets[13], object.showId);
  writer.writeString(offsets[14], object.status);
  writer.writeString(offsets[15], object.summary);
  writer.writeString(offsets[16], object.type);
  writer.writeString(offsets[17], object.url);
}

ShowModel _showModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShowModel(
    averageRuntime: reader.readLongOrNull(offsets[0]),
    ended: reader.readStringOrNull(offsets[1]),
    externals: reader.readObjectOrNull<ShowExternals>(
      offsets[2],
      ShowExternalsSchema.deserialize,
      allOffsets,
    ),
    genres: reader.readStringList(offsets[3]) ?? [],
    image: reader.readObjectOrNull<ShowImage>(offsets[4], ShowImageSchema.deserialize, allOffsets),
    language: reader.readString(offsets[5]),
    links: reader.readObjectOrNull<ShowLinks>(offsets[6], ShowLinksSchema.deserialize, allOffsets),
    name: reader.readString(offsets[7]),
    network: reader.readObjectOrNull<ShowNetwork>(
      offsets[8],
      ShowNetworkSchema.deserialize,
      allOffsets,
    ),
    premiered: reader.readStringOrNull(offsets[9]),
    rating: reader.readObjectOrNull<ShowRating>(
      offsets[10],
      ShowRatingSchema.deserialize,
      allOffsets,
    ),
    runtime: reader.readLongOrNull(offsets[11]),
    schedule: reader.readObjectOrNull<ShowSchedule>(
      offsets[12],
      ShowScheduleSchema.deserialize,
      allOffsets,
    ),
    showId: reader.readLong(offsets[13]),
    status: reader.readString(offsets[14]),
    summary: reader.readStringOrNull(offsets[15]),
    type: reader.readStringOrNull(offsets[16]),
    url: reader.readString(offsets[17]),
  );
  object.id = id;
  return object;
}

P _showModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<ShowExternals>(
            offset,
            ShowExternalsSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 3:
      return (reader.readStringList(offset) ?? []) as P;
    case 4:
      return (reader.readObjectOrNull<ShowImage>(offset, ShowImageSchema.deserialize, allOffsets))
          as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readObjectOrNull<ShowLinks>(offset, ShowLinksSchema.deserialize, allOffsets))
          as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readObjectOrNull<ShowNetwork>(
            offset,
            ShowNetworkSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<ShowRating>(offset, ShowRatingSchema.deserialize, allOffsets))
          as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readObjectOrNull<ShowSchedule>(
            offset,
            ShowScheduleSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _showModelGetId(ShowModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _showModelGetLinks(ShowModel object) {
  return [];
}

void _showModelAttach(IsarCollection<dynamic> col, Id id, ShowModel object) {
  object.id = id;
}

extension ShowModelQueryWhereSort on QueryBuilder<ShowModel, ShowModel, QWhere> {
  QueryBuilder<ShowModel, ShowModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ShowModelQueryWhere on QueryBuilder<ShowModel, ShowModel, QWhereClause> {
  QueryBuilder<ShowModel, ShowModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ShowModel, ShowModel, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.greaterThan(lower: id, includeLower: include));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.lessThan(upper: id, includeUpper: include));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterWhereClause> idBetween(
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

extension ShowModelQueryFilter on QueryBuilder<ShowModel, ShowModel, QFilterCondition> {
  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> averageRuntimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'averageRuntime'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> averageRuntimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'averageRuntime'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> averageRuntimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'averageRuntime', value: value),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> averageRuntimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(include: include, property: r'averageRuntime', value: value),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> averageRuntimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(include: include, property: r'averageRuntime', value: value),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> averageRuntimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'averageRuntime',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'ended'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'ended'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'ended', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'ended',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'ended',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'ended',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'ended', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'ended', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'ended', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'ended',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'ended', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> endedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'ended', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> externalsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'externals'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> externalsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'externals'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'genres', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'genres',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'genres',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'genres',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'genres', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'genres', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresElementContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'genres', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresElementMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'genres',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'genres', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'genres', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'genres', length, true, length, true);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'genres', 0, true, 0, true);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'genres', 0, false, 999999, true);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'genres', 0, true, length, include);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'genres', length, include, 999999, true);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> genresLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'genres', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'id', value: value));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(include: include, property: r'id', value: value),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(include: include, property: r'id', value: value),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'image'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'image'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> languageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'language', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> languageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> languageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> languageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'language',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'language', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> languageContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'language', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> languageMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'language',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'language', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'language', value: ''),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> linksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'links'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> linksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'links'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> nameContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> nameMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(property: r'name', wildcard: pattern, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'name', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'name', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> networkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'network'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> networkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'network'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'premiered'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'premiered'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'premiered', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'premiered',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'premiered',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'premiered',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'premiered',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'premiered',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'premiered',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'premiered',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'premiered', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> premieredIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'premiered', value: ''),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> ratingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'rating'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> ratingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'rating'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> runtimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'runtime'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> runtimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'runtime'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> runtimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'runtime', value: value));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> runtimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(include: include, property: r'runtime', value: value),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> runtimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(include: include, property: r'runtime', value: value),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> runtimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'runtime',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> scheduleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'schedule'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> scheduleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'schedule'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> showIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'showId', value: value));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> showIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(include: include, property: r'showId', value: value),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> showIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(include: include, property: r'showId', value: value),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> showIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'showId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'status', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'status',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'status',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'status',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'status', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'status', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> statusContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'status', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> statusMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'status',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'status', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'status', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'summary'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'summary'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'summary', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'summary',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'summary',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'summary',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'summary',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'summary', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'summary', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'summary',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'summary', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> summaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'summary', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'type'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'type'));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'type', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'type',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'type', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'type', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'type', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(property: r'type', wildcard: pattern, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'type', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'type', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'url', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'url',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'url', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'url', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> urlContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'url', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> urlMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(property: r'url', wildcard: pattern, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'url', value: ''));
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'url', value: ''));
    });
  }
}

extension ShowModelQueryObject on QueryBuilder<ShowModel, ShowModel, QFilterCondition> {
  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> externals(
    FilterQuery<ShowExternals> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'externals');
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> image(FilterQuery<ShowImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'image');
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> links(FilterQuery<ShowLinks> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'links');
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> network(FilterQuery<ShowNetwork> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'network');
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> rating(FilterQuery<ShowRating> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'rating');
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterFilterCondition> schedule(FilterQuery<ShowSchedule> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'schedule');
    });
  }
}

extension ShowModelQueryLinks on QueryBuilder<ShowModel, ShowModel, QFilterCondition> {}

extension ShowModelQuerySortBy on QueryBuilder<ShowModel, ShowModel, QSortBy> {
  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByAverageRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageRuntime', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByAverageRuntimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageRuntime', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByEnded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ended', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByEndedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ended', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByPremiered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premiered', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByPremieredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premiered', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByRuntimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByShowId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showId', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByShowIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showId', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortBySummary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortBySummaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension ShowModelQuerySortThenBy on QueryBuilder<ShowModel, ShowModel, QSortThenBy> {
  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByAverageRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageRuntime', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByAverageRuntimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageRuntime', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByEnded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ended', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByEndedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ended', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByPremiered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premiered', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByPremieredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'premiered', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByRuntimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'runtime', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByShowId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showId', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByShowIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showId', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenBySummary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenBySummaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension ShowModelQueryWhereDistinct on QueryBuilder<ShowModel, ShowModel, QDistinct> {
  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByAverageRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'averageRuntime');
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByEnded({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ended', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByGenres() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'genres');
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByLanguage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByPremiered({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'premiered', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByRuntime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'runtime');
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByShowId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'showId');
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctBySummary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'summary', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ShowModel, ShowModel, QDistinct> distinctByUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension ShowModelQueryProperty on QueryBuilder<ShowModel, ShowModel, QQueryProperty> {
  QueryBuilder<ShowModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ShowModel, int?, QQueryOperations> averageRuntimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'averageRuntime');
    });
  }

  QueryBuilder<ShowModel, String?, QQueryOperations> endedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ended');
    });
  }

  QueryBuilder<ShowModel, ShowExternals?, QQueryOperations> externalsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'externals');
    });
  }

  QueryBuilder<ShowModel, List<String>, QQueryOperations> genresProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genres');
    });
  }

  QueryBuilder<ShowModel, ShowImage?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<ShowModel, String, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<ShowModel, ShowLinks?, QQueryOperations> linksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'links');
    });
  }

  QueryBuilder<ShowModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ShowModel, ShowNetwork?, QQueryOperations> networkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'network');
    });
  }

  QueryBuilder<ShowModel, String?, QQueryOperations> premieredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'premiered');
    });
  }

  QueryBuilder<ShowModel, ShowRating?, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }

  QueryBuilder<ShowModel, int?, QQueryOperations> runtimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'runtime');
    });
  }

  QueryBuilder<ShowModel, ShowSchedule?, QQueryOperations> scheduleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'schedule');
    });
  }

  QueryBuilder<ShowModel, int, QQueryOperations> showIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'showId');
    });
  }

  QueryBuilder<ShowModel, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<ShowModel, String?, QQueryOperations> summaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'summary');
    });
  }

  QueryBuilder<ShowModel, String?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<ShowModel, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ShowRatingSchema = Schema(
  name: r'ShowRating',
  id: 7796560624792646338,
  properties: {r'average': PropertySchema(id: 0, name: r'average', type: IsarType.double)},
  estimateSize: _showRatingEstimateSize,
  serialize: _showRatingSerialize,
  deserialize: _showRatingDeserialize,
  deserializeProp: _showRatingDeserializeProp,
);

int _showRatingEstimateSize(ShowRating object, List<int> offsets, Map<Type, List<int>> allOffsets) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _showRatingSerialize(
  ShowRating object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.average);
}

ShowRating _showRatingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShowRating(average: reader.readDoubleOrNull(offsets[0]) ?? 0.0);
  return object;
}

P _showRatingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset) ?? 0.0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ShowRatingQueryFilter on QueryBuilder<ShowRating, ShowRating, QFilterCondition> {
  QueryBuilder<ShowRating, ShowRating, QAfterFilterCondition> averageEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'average', value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ShowRating, ShowRating, QAfterFilterCondition> averageGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'average',
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ShowRating, ShowRating, QAfterFilterCondition> averageLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'average',
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ShowRating, ShowRating, QAfterFilterCondition> averageBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'average',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          epsilon: epsilon,
        ),
      );
    });
  }
}

extension ShowRatingQueryObject on QueryBuilder<ShowRating, ShowRating, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ShowNetworkSchema = Schema(
  name: r'ShowNetwork',
  id: -8356604272891957849,
  properties: {
    r'country': PropertySchema(id: 0, name: r'country', type: IsarType.object, target: r'Country'),
    r'name': PropertySchema(id: 1, name: r'name', type: IsarType.string),
    r'networkId': PropertySchema(id: 2, name: r'networkId', type: IsarType.long),
  },
  estimateSize: _showNetworkEstimateSize,
  serialize: _showNetworkSerialize,
  deserialize: _showNetworkDeserialize,
  deserializeProp: _showNetworkDeserializeProp,
);

int _showNetworkEstimateSize(
  ShowNetwork object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + CountrySchema.estimateSize(value, allOffsets[Country]!, allOffsets);
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _showNetworkSerialize(
  ShowNetwork object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Country>(offsets[0], allOffsets, CountrySchema.serialize, object.country);
  writer.writeString(offsets[1], object.name);
  writer.writeLong(offsets[2], object.networkId);
}

ShowNetwork _showNetworkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShowNetwork(
    country: reader.readObjectOrNull<Country>(offsets[0], CountrySchema.deserialize, allOffsets),
    name: reader.readStringOrNull(offsets[1]),
    networkId: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _showNetworkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Country>(offset, CountrySchema.deserialize, allOffsets)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ShowNetworkQueryFilter on QueryBuilder<ShowNetwork, ShowNetwork, QFilterCondition> {
  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'country'));
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'country'));
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'name'));
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'name'));
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(property: r'name', wildcard: pattern, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'name', value: ''));
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'name', value: ''));
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> networkIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'networkId'));
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> networkIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'networkId'));
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> networkIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'networkId', value: value),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> networkIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(include: include, property: r'networkId', value: value),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> networkIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(include: include, property: r'networkId', value: value),
      );
    });
  }

  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> networkIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'networkId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension ShowNetworkQueryObject on QueryBuilder<ShowNetwork, ShowNetwork, QFilterCondition> {
  QueryBuilder<ShowNetwork, ShowNetwork, QAfterFilterCondition> country(FilterQuery<Country> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'country');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CountrySchema = Schema(
  name: r'Country',
  id: 2501229096893911614,
  properties: {
    r'code': PropertySchema(id: 0, name: r'code', type: IsarType.string),
    r'name': PropertySchema(id: 1, name: r'name', type: IsarType.string),
    r'timezone': PropertySchema(id: 2, name: r'timezone', type: IsarType.string),
  },
  estimateSize: _countryEstimateSize,
  serialize: _countrySerialize,
  deserialize: _countryDeserialize,
  deserializeProp: _countryDeserializeProp,
);

int _countryEstimateSize(Country object, List<int> offsets, Map<Type, List<int>> allOffsets) {
  var bytesCount = offsets.last;
  {
    final value = object.code;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timezone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _countrySerialize(
  Country object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.code);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.timezone);
}

Country _countryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Country(
    code: reader.readStringOrNull(offsets[0]),
    name: reader.readStringOrNull(offsets[1]),
    timezone: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _countryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CountryQueryFilter on QueryBuilder<Country, Country, QFilterCondition> {
  QueryBuilder<Country, Country, QAfterFilterCondition> codeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'code'));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'code'));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'code', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'code',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'code',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'code',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'code', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'code', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'code', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(property: r'code', wildcard: pattern, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'code', value: ''));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'code', value: ''));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'name'));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'name'));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'name', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(property: r'name', wildcard: pattern, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'name', value: ''));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'name', value: ''));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'timezone'));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'timezone'));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'timezone', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'timezone',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'timezone',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'timezone',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'timezone',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'timezone', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'timezone', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'timezone',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'timezone', value: ''));
    });
  }

  QueryBuilder<Country, Country, QAfterFilterCondition> timezoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'timezone', value: ''),
      );
    });
  }
}

extension CountryQueryObject on QueryBuilder<Country, Country, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ShowExternalsSchema = Schema(
  name: r'ShowExternals',
  id: -3335226082840276375,
  properties: {
    r'thetvdb': PropertySchema(id: 0, name: r'thetvdb', type: IsarType.long),
    r'tvrage': PropertySchema(id: 1, name: r'tvrage', type: IsarType.long),
  },
  estimateSize: _showExternalsEstimateSize,
  serialize: _showExternalsSerialize,
  deserialize: _showExternalsDeserialize,
  deserializeProp: _showExternalsDeserializeProp,
);

int _showExternalsEstimateSize(
  ShowExternals object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _showExternalsSerialize(
  ShowExternals object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.thetvdb);
  writer.writeLong(offsets[1], object.tvrage);
}

ShowExternals _showExternalsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShowExternals(
    thetvdb: reader.readLongOrNull(offsets[0]),
    tvrage: reader.readLongOrNull(offsets[1]),
  );
  return object;
}

P _showExternalsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ShowExternalsQueryFilter on QueryBuilder<ShowExternals, ShowExternals, QFilterCondition> {
  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> thetvdbIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'thetvdb'));
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> thetvdbIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'thetvdb'));
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> thetvdbEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'thetvdb', value: value));
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> thetvdbGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(include: include, property: r'thetvdb', value: value),
      );
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> thetvdbLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(include: include, property: r'thetvdb', value: value),
      );
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> thetvdbBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'thetvdb',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> tvrageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'tvrage'));
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> tvrageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'tvrage'));
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> tvrageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'tvrage', value: value));
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> tvrageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(include: include, property: r'tvrage', value: value),
      );
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> tvrageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(include: include, property: r'tvrage', value: value),
      );
    });
  }

  QueryBuilder<ShowExternals, ShowExternals, QAfterFilterCondition> tvrageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'tvrage',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension ShowExternalsQueryObject
    on QueryBuilder<ShowExternals, ShowExternals, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ShowImageSchema = Schema(
  name: r'ShowImage',
  id: -6489601501712255811,
  properties: {
    r'medium': PropertySchema(id: 0, name: r'medium', type: IsarType.string),
    r'original': PropertySchema(id: 1, name: r'original', type: IsarType.string),
  },
  estimateSize: _showImageEstimateSize,
  serialize: _showImageSerialize,
  deserialize: _showImageDeserialize,
  deserializeProp: _showImageDeserializeProp,
);

int _showImageEstimateSize(ShowImage object, List<int> offsets, Map<Type, List<int>> allOffsets) {
  var bytesCount = offsets.last;
  {
    final value = object.medium;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.original;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _showImageSerialize(
  ShowImage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.medium);
  writer.writeString(offsets[1], object.original);
}

ShowImage _showImageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShowImage(
    medium: reader.readStringOrNull(offsets[0]),
    original: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _showImageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ShowImageQueryFilter on QueryBuilder<ShowImage, ShowImage, QFilterCondition> {
  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'medium'));
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'medium'));
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'medium', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'medium',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'medium',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'medium',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'medium', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'medium', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'medium', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'medium',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'medium', value: ''));
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> mediumIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'medium', value: ''));
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'original'));
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'original'));
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'original', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'original',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'original',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'original',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'original',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'original', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'original', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'original',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'original', value: ''));
    });
  }

  QueryBuilder<ShowImage, ShowImage, QAfterFilterCondition> originalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'original', value: ''),
      );
    });
  }
}

extension ShowImageQueryObject on QueryBuilder<ShowImage, ShowImage, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ShowLinksSchema = Schema(
  name: r'ShowLinks',
  id: -4274917239453427662,
  properties: {
    r'previousEpisodeHref': PropertySchema(
      id: 0,
      name: r'previousEpisodeHref',
      type: IsarType.string,
    ),
    r'previousEpisodeName': PropertySchema(
      id: 1,
      name: r'previousEpisodeName',
      type: IsarType.string,
    ),
    r'selfHref': PropertySchema(id: 2, name: r'selfHref', type: IsarType.string),
  },
  estimateSize: _showLinksEstimateSize,
  serialize: _showLinksSerialize,
  deserialize: _showLinksDeserialize,
  deserializeProp: _showLinksDeserializeProp,
);

int _showLinksEstimateSize(ShowLinks object, List<int> offsets, Map<Type, List<int>> allOffsets) {
  var bytesCount = offsets.last;
  {
    final value = object.previousEpisodeHref;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.previousEpisodeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.selfHref;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _showLinksSerialize(
  ShowLinks object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.previousEpisodeHref);
  writer.writeString(offsets[1], object.previousEpisodeName);
  writer.writeString(offsets[2], object.selfHref);
}

ShowLinks _showLinksDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShowLinks(
    previousEpisodeHref: reader.readStringOrNull(offsets[0]),
    previousEpisodeName: reader.readStringOrNull(offsets[1]),
    selfHref: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _showLinksDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ShowLinksQueryFilter on QueryBuilder<ShowLinks, ShowLinks, QFilterCondition> {
  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'previousEpisodeHref'),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'previousEpisodeHref'),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'previousEpisodeHref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'previousEpisodeHref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'previousEpisodeHref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'previousEpisodeHref',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'previousEpisodeHref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'previousEpisodeHref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'previousEpisodeHref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'previousEpisodeHref',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'previousEpisodeHref', value: ''),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeHrefIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'previousEpisodeHref', value: ''),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'previousEpisodeName'),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'previousEpisodeName'),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'previousEpisodeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'previousEpisodeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'previousEpisodeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'previousEpisodeName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'previousEpisodeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'previousEpisodeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'previousEpisodeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'previousEpisodeName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'previousEpisodeName', value: ''),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> previousEpisodeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'previousEpisodeName', value: ''),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'selfHref'));
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'selfHref'));
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'selfHref', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'selfHref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'selfHref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'selfHref',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'selfHref',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'selfHref', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'selfHref', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'selfHref',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'selfHref', value: ''));
    });
  }

  QueryBuilder<ShowLinks, ShowLinks, QAfterFilterCondition> selfHrefIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'selfHref', value: ''),
      );
    });
  }
}

extension ShowLinksQueryObject on QueryBuilder<ShowLinks, ShowLinks, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ShowScheduleSchema = Schema(
  name: r'ShowSchedule',
  id: 245316170333957701,
  properties: {
    r'days': PropertySchema(id: 0, name: r'days', type: IsarType.stringList),
    r'time': PropertySchema(id: 1, name: r'time', type: IsarType.string),
  },
  estimateSize: _showScheduleEstimateSize,
  serialize: _showScheduleSerialize,
  deserialize: _showScheduleDeserialize,
  deserializeProp: _showScheduleDeserializeProp,
);

int _showScheduleEstimateSize(
  ShowSchedule object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.days;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.time;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _showScheduleSerialize(
  ShowSchedule object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.days);
  writer.writeString(offsets[1], object.time);
}

ShowSchedule _showScheduleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ShowSchedule(
    days: reader.readStringList(offsets[0]),
    time: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _showScheduleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ShowScheduleQueryFilter on QueryBuilder<ShowSchedule, ShowSchedule, QFilterCondition> {
  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'days'));
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'days'));
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'days', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'days',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'days',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'days',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'days', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'days', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysElementContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'days', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysElementMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(property: r'days', wildcard: pattern, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'days', value: ''));
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'days', value: ''));
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'days', length, true, length, true);
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'days', 0, true, 0, true);
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'days', 0, false, 999999, true);
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'days', 0, true, length, include);
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'days', length, include, 999999, true);
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> daysLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'days', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(property: r'time'));
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(property: r'time'));
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'time', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'time',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'time',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'time',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(property: r'time', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(property: r'time', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(property: r'time', value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(property: r'time', wildcard: pattern, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(property: r'time', value: ''));
    });
  }

  QueryBuilder<ShowSchedule, ShowSchedule, QAfterFilterCondition> timeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(property: r'time', value: ''));
    });
  }
}

extension ShowScheduleQueryObject on QueryBuilder<ShowSchedule, ShowSchedule, QFilterCondition> {}
