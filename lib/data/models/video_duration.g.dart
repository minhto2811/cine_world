// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_duration.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetVideoDurationCollection on Isar {
  IsarCollection<VideoDuration> get videoDurations => this.collection();
}

const VideoDurationSchema = CollectionSchema(
  name: r'VideoDuration',
  id: -1589920360514167309,
  properties: {
    r'duration': PropertySchema(
      id: 0,
      name: r'duration',
      type: IsarType.long,
    ),
    r'maxDuration': PropertySchema(
      id: 1,
      name: r'maxDuration',
      type: IsarType.long,
    )
  },
  estimateSize: _videoDurationEstimateSize,
  serialize: _videoDurationSerialize,
  deserialize: _videoDurationDeserialize,
  deserializeProp: _videoDurationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _videoDurationGetId,
  getLinks: _videoDurationGetLinks,
  attach: _videoDurationAttach,
  version: '3.1.0+1',
);

int _videoDurationEstimateSize(
  VideoDuration object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _videoDurationSerialize(
  VideoDuration object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.duration);
  writer.writeLong(offsets[1], object.maxDuration);
}

VideoDuration _videoDurationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = VideoDuration(
    duration: reader.readLong(offsets[0]),
    id: id,
    maxDuration: reader.readLong(offsets[1]),
  );
  return object;
}

P _videoDurationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _videoDurationGetId(VideoDuration object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _videoDurationGetLinks(VideoDuration object) {
  return [];
}

void _videoDurationAttach(
    IsarCollection<dynamic> col, Id id, VideoDuration object) {}

extension VideoDurationQueryWhereSort
    on QueryBuilder<VideoDuration, VideoDuration, QWhere> {
  QueryBuilder<VideoDuration, VideoDuration, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension VideoDurationQueryWhere
    on QueryBuilder<VideoDuration, VideoDuration, QWhereClause> {
  QueryBuilder<VideoDuration, VideoDuration, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<VideoDuration, VideoDuration, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterWhereClause> idBetween(
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

extension VideoDurationQueryFilter
    on QueryBuilder<VideoDuration, VideoDuration, QFilterCondition> {
  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition>
      durationEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition>
      durationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition>
      durationLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition>
      durationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition>
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

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition> idBetween(
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

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition>
      maxDurationEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition>
      maxDurationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition>
      maxDurationLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterFilterCondition>
      maxDurationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxDuration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension VideoDurationQueryObject
    on QueryBuilder<VideoDuration, VideoDuration, QFilterCondition> {}

extension VideoDurationQueryLinks
    on QueryBuilder<VideoDuration, VideoDuration, QFilterCondition> {}

extension VideoDurationQuerySortBy
    on QueryBuilder<VideoDuration, VideoDuration, QSortBy> {
  QueryBuilder<VideoDuration, VideoDuration, QAfterSortBy> sortByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterSortBy>
      sortByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterSortBy> sortByMaxDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDuration', Sort.asc);
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterSortBy>
      sortByMaxDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDuration', Sort.desc);
    });
  }
}

extension VideoDurationQuerySortThenBy
    on QueryBuilder<VideoDuration, VideoDuration, QSortThenBy> {
  QueryBuilder<VideoDuration, VideoDuration, QAfterSortBy> thenByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterSortBy>
      thenByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterSortBy> thenByMaxDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDuration', Sort.asc);
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QAfterSortBy>
      thenByMaxDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxDuration', Sort.desc);
    });
  }
}

extension VideoDurationQueryWhereDistinct
    on QueryBuilder<VideoDuration, VideoDuration, QDistinct> {
  QueryBuilder<VideoDuration, VideoDuration, QDistinct> distinctByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'duration');
    });
  }

  QueryBuilder<VideoDuration, VideoDuration, QDistinct>
      distinctByMaxDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxDuration');
    });
  }
}

extension VideoDurationQueryProperty
    on QueryBuilder<VideoDuration, VideoDuration, QQueryProperty> {
  QueryBuilder<VideoDuration, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<VideoDuration, int, QQueryOperations> durationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'duration');
    });
  }

  QueryBuilder<VideoDuration, int, QQueryOperations> maxDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxDuration');
    });
  }
}
