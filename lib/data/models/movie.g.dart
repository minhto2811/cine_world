// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMovieCollection on Isar {
  IsarCollection<Movie> get movies => this.collection();
}

const MovieSchema = CollectionSchema(
  name: r'Movie',
  id: 693552702131689691,
  properties: {
    r'actor': PropertySchema(
      id: 0,
      name: r'actor',
      type: IsarType.stringList,
    ),
    r'category': PropertySchema(
      id: 1,
      name: r'category',
      type: IsarType.objectList,
      target: r'MovieInfo',
    ),
    r'chieurap': PropertySchema(
      id: 2,
      name: r'chieurap',
      type: IsarType.bool,
    ),
    r'content': PropertySchema(
      id: 3,
      name: r'content',
      type: IsarType.string,
    ),
    r'country': PropertySchema(
      id: 4,
      name: r'country',
      type: IsarType.objectList,
      target: r'MovieInfo',
    ),
    r'created': PropertySchema(
      id: 5,
      name: r'created',
      type: IsarType.object,
      target: r'Time',
    ),
    r'director': PropertySchema(
      id: 6,
      name: r'director',
      type: IsarType.stringList,
    ),
    r'episodeCurrent': PropertySchema(
      id: 7,
      name: r'episodeCurrent',
      type: IsarType.string,
    ),
    r'episodeTotal': PropertySchema(
      id: 8,
      name: r'episodeTotal',
      type: IsarType.string,
    ),
    r'episodes': PropertySchema(
      id: 9,
      name: r'episodes',
      type: IsarType.objectList,
      target: r'Episodes',
    ),
    r'id': PropertySchema(
      id: 10,
      name: r'id',
      type: IsarType.string,
    ),
    r'isCopyright': PropertySchema(
      id: 11,
      name: r'isCopyright',
      type: IsarType.bool,
    ),
    r'lang': PropertySchema(
      id: 12,
      name: r'lang',
      type: IsarType.string,
    ),
    r'modified': PropertySchema(
      id: 13,
      name: r'modified',
      type: IsarType.object,
      target: r'Time',
    ),
    r'name': PropertySchema(
      id: 14,
      name: r'name',
      type: IsarType.string,
    ),
    r'notify': PropertySchema(
      id: 15,
      name: r'notify',
      type: IsarType.string,
    ),
    r'originName': PropertySchema(
      id: 16,
      name: r'originName',
      type: IsarType.string,
    ),
    r'posterUrl': PropertySchema(
      id: 17,
      name: r'posterUrl',
      type: IsarType.string,
    ),
    r'quality': PropertySchema(
      id: 18,
      name: r'quality',
      type: IsarType.string,
    ),
    r'showtimes': PropertySchema(
      id: 19,
      name: r'showtimes',
      type: IsarType.string,
    ),
    r'slug': PropertySchema(
      id: 20,
      name: r'slug',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 21,
      name: r'status',
      type: IsarType.string,
    ),
    r'subDocquyen': PropertySchema(
      id: 22,
      name: r'subDocquyen',
      type: IsarType.bool,
    ),
    r'thumbUrl': PropertySchema(
      id: 23,
      name: r'thumbUrl',
      type: IsarType.string,
    ),
    r'time': PropertySchema(
      id: 24,
      name: r'time',
      type: IsarType.string,
    ),
    r'trailerUrl': PropertySchema(
      id: 25,
      name: r'trailerUrl',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 26,
      name: r'type',
      type: IsarType.string,
    ),
    r'view': PropertySchema(
      id: 27,
      name: r'view',
      type: IsarType.long,
    ),
    r'year': PropertySchema(
      id: 28,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _movieEstimateSize,
  serialize: _movieSerialize,
  deserialize: _movieDeserialize,
  deserializeProp: _movieDeserializeProp,
  idName: r'mId',
  indexes: {
    r'slug': IndexSchema(
      id: 6169444064746062836,
      name: r'slug',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'slug',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'Time': TimeSchema,
    r'MovieInfo': MovieInfoSchema,
    r'Episodes': EpisodesSchema,
    r'ServerData': ServerDataSchema
  },
  getId: _movieGetId,
  getLinks: _movieGetLinks,
  attach: _movieAttach,
  version: '3.1.0+1',
);

int _movieEstimateSize(
  Movie object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.actor.length * 3;
  {
    for (var i = 0; i < object.actor.length; i++) {
      final value = object.actor[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.category.length * 3;
  {
    final offsets = allOffsets[MovieInfo]!;
    for (var i = 0; i < object.category.length; i++) {
      final value = object.category[i];
      bytesCount += MovieInfoSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.country.length * 3;
  {
    final offsets = allOffsets[MovieInfo]!;
    for (var i = 0; i < object.country.length; i++) {
      final value = object.country[i];
      bytesCount += MovieInfoSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 +
      TimeSchema.estimateSize(object.created, allOffsets[Time]!, allOffsets);
  bytesCount += 3 + object.director.length * 3;
  {
    for (var i = 0; i < object.director.length; i++) {
      final value = object.director[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.episodeCurrent.length * 3;
  bytesCount += 3 + object.episodeTotal.length * 3;
  bytesCount += 3 + object.episodes.length * 3;
  {
    final offsets = allOffsets[Episodes]!;
    for (var i = 0; i < object.episodes.length; i++) {
      final value = object.episodes[i];
      bytesCount += EpisodesSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.lang.length * 3;
  bytesCount += 3 +
      TimeSchema.estimateSize(object.modified, allOffsets[Time]!, allOffsets);
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.notify.length * 3;
  bytesCount += 3 + object.originName.length * 3;
  bytesCount += 3 + object.posterUrl.length * 3;
  bytesCount += 3 + object.quality.length * 3;
  bytesCount += 3 + object.showtimes.length * 3;
  bytesCount += 3 + object.slug.length * 3;
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.thumbUrl.length * 3;
  bytesCount += 3 + object.time.length * 3;
  bytesCount += 3 + object.trailerUrl.length * 3;
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _movieSerialize(
  Movie object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.actor);
  writer.writeObjectList<MovieInfo>(
    offsets[1],
    allOffsets,
    MovieInfoSchema.serialize,
    object.category,
  );
  writer.writeBool(offsets[2], object.chieurap);
  writer.writeString(offsets[3], object.content);
  writer.writeObjectList<MovieInfo>(
    offsets[4],
    allOffsets,
    MovieInfoSchema.serialize,
    object.country,
  );
  writer.writeObject<Time>(
    offsets[5],
    allOffsets,
    TimeSchema.serialize,
    object.created,
  );
  writer.writeStringList(offsets[6], object.director);
  writer.writeString(offsets[7], object.episodeCurrent);
  writer.writeString(offsets[8], object.episodeTotal);
  writer.writeObjectList<Episodes>(
    offsets[9],
    allOffsets,
    EpisodesSchema.serialize,
    object.episodes,
  );
  writer.writeString(offsets[10], object.id);
  writer.writeBool(offsets[11], object.isCopyright);
  writer.writeString(offsets[12], object.lang);
  writer.writeObject<Time>(
    offsets[13],
    allOffsets,
    TimeSchema.serialize,
    object.modified,
  );
  writer.writeString(offsets[14], object.name);
  writer.writeString(offsets[15], object.notify);
  writer.writeString(offsets[16], object.originName);
  writer.writeString(offsets[17], object.posterUrl);
  writer.writeString(offsets[18], object.quality);
  writer.writeString(offsets[19], object.showtimes);
  writer.writeString(offsets[20], object.slug);
  writer.writeString(offsets[21], object.status);
  writer.writeBool(offsets[22], object.subDocquyen);
  writer.writeString(offsets[23], object.thumbUrl);
  writer.writeString(offsets[24], object.time);
  writer.writeString(offsets[25], object.trailerUrl);
  writer.writeString(offsets[26], object.type);
  writer.writeLong(offsets[27], object.view);
  writer.writeLong(offsets[28], object.year);
}

Movie _movieDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Movie(
    actor: reader.readStringList(offsets[0]) ?? [],
    category: reader.readObjectList<MovieInfo>(
          offsets[1],
          MovieInfoSchema.deserialize,
          allOffsets,
          MovieInfo(),
        ) ??
        [],
    chieurap: reader.readBool(offsets[2]),
    content: reader.readString(offsets[3]),
    country: reader.readObjectList<MovieInfo>(
          offsets[4],
          MovieInfoSchema.deserialize,
          allOffsets,
          MovieInfo(),
        ) ??
        [],
    created: reader.readObjectOrNull<Time>(
          offsets[5],
          TimeSchema.deserialize,
          allOffsets,
        ) ??
        Time(),
    director: reader.readStringList(offsets[6]) ?? [],
    episodeCurrent: reader.readString(offsets[7]),
    episodeTotal: reader.readString(offsets[8]),
    episodes: reader.readObjectList<Episodes>(
          offsets[9],
          EpisodesSchema.deserialize,
          allOffsets,
          Episodes(),
        ) ??
        [],
    id: reader.readString(offsets[10]),
    isCopyright: reader.readBool(offsets[11]),
    lang: reader.readString(offsets[12]),
    modified: reader.readObjectOrNull<Time>(
          offsets[13],
          TimeSchema.deserialize,
          allOffsets,
        ) ??
        Time(),
    name: reader.readString(offsets[14]),
    notify: reader.readString(offsets[15]),
    originName: reader.readString(offsets[16]),
    posterUrl: reader.readString(offsets[17]),
    quality: reader.readString(offsets[18]),
    showtimes: reader.readString(offsets[19]),
    slug: reader.readString(offsets[20]),
    status: reader.readString(offsets[21]),
    subDocquyen: reader.readBool(offsets[22]),
    thumbUrl: reader.readString(offsets[23]),
    time: reader.readString(offsets[24]),
    trailerUrl: reader.readString(offsets[25]),
    type: reader.readString(offsets[26]),
    view: reader.readLong(offsets[27]),
    year: reader.readLong(offsets[28]),
  );
  object.mId = id;
  return object;
}

P _movieDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readObjectList<MovieInfo>(
            offset,
            MovieInfoSchema.deserialize,
            allOffsets,
            MovieInfo(),
          ) ??
          []) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readObjectList<MovieInfo>(
            offset,
            MovieInfoSchema.deserialize,
            allOffsets,
            MovieInfo(),
          ) ??
          []) as P;
    case 5:
      return (reader.readObjectOrNull<Time>(
            offset,
            TimeSchema.deserialize,
            allOffsets,
          ) ??
          Time()) as P;
    case 6:
      return (reader.readStringList(offset) ?? []) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readObjectList<Episodes>(
            offset,
            EpisodesSchema.deserialize,
            allOffsets,
            Episodes(),
          ) ??
          []) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readObjectOrNull<Time>(
            offset,
            TimeSchema.deserialize,
            allOffsets,
          ) ??
          Time()) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readString(offset)) as P;
    case 22:
      return (reader.readBool(offset)) as P;
    case 23:
      return (reader.readString(offset)) as P;
    case 24:
      return (reader.readString(offset)) as P;
    case 25:
      return (reader.readString(offset)) as P;
    case 26:
      return (reader.readString(offset)) as P;
    case 27:
      return (reader.readLong(offset)) as P;
    case 28:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _movieGetId(Movie object) {
  return object.mId;
}

List<IsarLinkBase<dynamic>> _movieGetLinks(Movie object) {
  return [];
}

void _movieAttach(IsarCollection<dynamic> col, Id id, Movie object) {
  object.mId = id;
}

extension MovieQueryWhereSort on QueryBuilder<Movie, Movie, QWhere> {
  QueryBuilder<Movie, Movie, QAfterWhere> anyMId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MovieQueryWhere on QueryBuilder<Movie, Movie, QWhereClause> {
  QueryBuilder<Movie, Movie, QAfterWhereClause> mIdEqualTo(Id mId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: mId,
        upper: mId,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> mIdNotEqualTo(Id mId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: mId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: mId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: mId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: mId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> mIdGreaterThan(Id mId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: mId, includeLower: include),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> mIdLessThan(Id mId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: mId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> mIdBetween(
    Id lowerMId,
    Id upperMId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerMId,
        includeLower: includeLower,
        upper: upperMId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> slugEqualTo(String slug) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'slug',
        value: [slug],
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterWhereClause> slugNotEqualTo(String slug) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'slug',
              lower: [],
              upper: [slug],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'slug',
              lower: [slug],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'slug',
              lower: [slug],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'slug',
              lower: [],
              upper: [slug],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MovieQueryFilter on QueryBuilder<Movie, Movie, QFilterCondition> {
  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'actor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'actor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'actor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'actor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actor',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'actor',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'actor',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'actor',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'actor',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'actor',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'actor',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> actorLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'actor',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'category',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'category',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'category',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'category',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'category',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'category',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> chieurapEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chieurap',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> contentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> contentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> contentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> countryLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'country',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'country',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'country',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> countryLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'country',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> countryLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'country',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> countryLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'country',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'director',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'director',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'director',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'director',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'director',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'director',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'director',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'director',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'director',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      directorElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'director',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'director',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'director',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'director',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'director',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'director',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> directorLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'director',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeCurrentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeCurrent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeCurrentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'episodeCurrent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeCurrentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'episodeCurrent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeCurrentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'episodeCurrent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeCurrentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'episodeCurrent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeCurrentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'episodeCurrent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeCurrentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'episodeCurrent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeCurrentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'episodeCurrent',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeCurrentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeCurrent',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeCurrentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'episodeCurrent',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeTotalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeTotalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'episodeTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeTotalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'episodeTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeTotalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'episodeTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeTotalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'episodeTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeTotalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'episodeTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeTotalContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'episodeTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeTotalMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'episodeTotal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeTotalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'episodeTotal',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodeTotalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'episodeTotal',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'episodes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'episodes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'episodes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'episodes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'episodes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'episodes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> isCopyrightEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCopyright',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> langEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> langGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> langLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> langBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lang',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> langStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> langEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> langContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> langMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lang',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> langIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> langIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> mIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> mIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> mIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mId',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> mIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> notifyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> notifyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> notifyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> notifyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notify',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> notifyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> notifyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> notifyContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> notifyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notify',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> notifyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notify',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> notifyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notify',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originName',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originName',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'posterUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'posterUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'posterUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'posterUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'posterUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'posterUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'posterUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'posterUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> qualityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> qualityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> qualityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> qualityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quality',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> qualityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> qualityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> qualityContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> qualityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quality',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> qualityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quality',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> qualityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quality',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> showtimesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showtimes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> showtimesGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'showtimes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> showtimesLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'showtimes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> showtimesBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'showtimes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> showtimesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'showtimes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> showtimesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'showtimes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> showtimesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'showtimes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> showtimesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'showtimes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> showtimesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showtimes',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> showtimesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'showtimes',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> slugEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> slugGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> slugLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> slugBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slug',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> slugStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> slugEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> slugContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> slugMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slug',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> slugIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> slugIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slug',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> statusContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> subDocquyenEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subDocquyen',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> thumbUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> thumbUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> thumbUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> thumbUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> thumbUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'thumbUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> thumbUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'thumbUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> thumbUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'thumbUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> thumbUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'thumbUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> thumbUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> thumbUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'thumbUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> timeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> timeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> timeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> timeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> timeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> timeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> timeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> timeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'time',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> timeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> timeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> trailerUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trailerUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> trailerUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trailerUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> trailerUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trailerUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> trailerUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trailerUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> trailerUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'trailerUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> trailerUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'trailerUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> trailerUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'trailerUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> trailerUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'trailerUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> trailerUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trailerUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> trailerUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'trailerUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> typeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> typeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> viewEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'view',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> viewGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'view',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> viewLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'view',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> viewBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'view',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> yearEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> yearGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> yearLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> yearBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'year',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MovieQueryObject on QueryBuilder<Movie, Movie, QFilterCondition> {
  QueryBuilder<Movie, Movie, QAfterFilterCondition> categoryElement(
      FilterQuery<MovieInfo> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'category');
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> countryElement(
      FilterQuery<MovieInfo> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'country');
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> created(
      FilterQuery<Time> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'created');
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> episodesElement(
      FilterQuery<Episodes> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'episodes');
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> modified(
      FilterQuery<Time> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'modified');
    });
  }
}

extension MovieQueryLinks on QueryBuilder<Movie, Movie, QFilterCondition> {}

extension MovieQuerySortBy on QueryBuilder<Movie, Movie, QSortBy> {
  QueryBuilder<Movie, Movie, QAfterSortBy> sortByChieurap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chieurap', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByChieurapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chieurap', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByEpisodeCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeCurrent', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByEpisodeCurrentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeCurrent', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByEpisodeTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeTotal', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByEpisodeTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeTotal', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByIsCopyright() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCopyright', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByIsCopyrightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCopyright', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByLang() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByLangDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByNotify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notify', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByNotifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notify', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByOriginName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originName', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByOriginNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originName', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByPosterUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterUrl', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByPosterUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterUrl', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quality', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quality', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByShowtimes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showtimes', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByShowtimesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showtimes', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortBySlug() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slug', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortBySlugDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slug', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortBySubDocquyen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subDocquyen', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortBySubDocquyenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subDocquyen', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByThumbUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbUrl', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByThumbUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbUrl', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByTrailerUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trailerUrl', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByTrailerUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trailerUrl', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByView() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'view', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByViewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'view', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension MovieQuerySortThenBy on QueryBuilder<Movie, Movie, QSortThenBy> {
  QueryBuilder<Movie, Movie, QAfterSortBy> thenByChieurap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chieurap', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByChieurapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chieurap', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByEpisodeCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeCurrent', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByEpisodeCurrentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeCurrent', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByEpisodeTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeTotal', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByEpisodeTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'episodeTotal', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByIsCopyright() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCopyright', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByIsCopyrightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCopyright', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByLang() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByLangDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByMId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mId', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByMIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mId', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByNotify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notify', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByNotifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notify', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByOriginName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originName', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByOriginNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originName', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByPosterUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterUrl', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByPosterUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterUrl', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quality', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quality', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByShowtimes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showtimes', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByShowtimesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showtimes', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenBySlug() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slug', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenBySlugDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slug', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenBySubDocquyen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subDocquyen', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenBySubDocquyenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subDocquyen', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByThumbUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbUrl', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByThumbUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbUrl', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByTrailerUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trailerUrl', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByTrailerUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trailerUrl', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByView() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'view', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByViewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'view', Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension MovieQueryWhereDistinct on QueryBuilder<Movie, Movie, QDistinct> {
  QueryBuilder<Movie, Movie, QDistinct> distinctByActor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actor');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByChieurap() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chieurap');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByDirector() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'director');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByEpisodeCurrent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'episodeCurrent',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByEpisodeTotal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'episodeTotal', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByIsCopyright() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCopyright');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByLang(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lang', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByNotify(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notify', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByOriginName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByPosterUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'posterUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByQuality(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quality', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByShowtimes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'showtimes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctBySlug(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'slug', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctBySubDocquyen() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subDocquyen');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByThumbUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thumbUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByTime(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByTrailerUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trailerUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByView() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'view');
    });
  }

  QueryBuilder<Movie, Movie, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension MovieQueryProperty on QueryBuilder<Movie, Movie, QQueryProperty> {
  QueryBuilder<Movie, int, QQueryOperations> mIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mId');
    });
  }

  QueryBuilder<Movie, List<String>, QQueryOperations> actorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actor');
    });
  }

  QueryBuilder<Movie, List<MovieInfo>, QQueryOperations> categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<Movie, bool, QQueryOperations> chieurapProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chieurap');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<Movie, List<MovieInfo>, QQueryOperations> countryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country');
    });
  }

  QueryBuilder<Movie, Time, QQueryOperations> createdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created');
    });
  }

  QueryBuilder<Movie, List<String>, QQueryOperations> directorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'director');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> episodeCurrentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'episodeCurrent');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> episodeTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'episodeTotal');
    });
  }

  QueryBuilder<Movie, List<Episodes>, QQueryOperations> episodesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'episodes');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Movie, bool, QQueryOperations> isCopyrightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCopyright');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> langProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lang');
    });
  }

  QueryBuilder<Movie, Time, QQueryOperations> modifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modified');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> notifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notify');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> originNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originName');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> posterUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'posterUrl');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> qualityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quality');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> showtimesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'showtimes');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> slugProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'slug');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<Movie, bool, QQueryOperations> subDocquyenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subDocquyen');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> thumbUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thumbUrl');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> trailerUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trailerUrl');
    });
  }

  QueryBuilder<Movie, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Movie, int, QQueryOperations> viewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'view');
    });
  }

  QueryBuilder<Movie, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MovieInfoSchema = Schema(
  name: r'MovieInfo',
  id: 3337971967634943984,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'slug': PropertySchema(
      id: 2,
      name: r'slug',
      type: IsarType.string,
    )
  },
  estimateSize: _movieInfoEstimateSize,
  serialize: _movieInfoSerialize,
  deserialize: _movieInfoDeserialize,
  deserializeProp: _movieInfoDeserializeProp,
);

int _movieInfoEstimateSize(
  MovieInfo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.id;
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
    final value = object.slug;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _movieInfoSerialize(
  MovieInfo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.id);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.slug);
}

MovieInfo _movieInfoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MovieInfo(
    id: reader.readStringOrNull(offsets[0]),
    name: reader.readStringOrNull(offsets[1]),
    slug: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _movieInfoDeserializeProp<P>(
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

extension MovieInfoQueryFilter
    on QueryBuilder<MovieInfo, MovieInfo, QFilterCondition> {
  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'slug',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'slug',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slug',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slug',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slug',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieInfo, MovieInfo, QAfterFilterCondition> slugIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slug',
        value: '',
      ));
    });
  }
}

extension MovieInfoQueryObject
    on QueryBuilder<MovieInfo, MovieInfo, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TimeSchema = Schema(
  name: r'Time',
  id: 6676261169606783222,
  properties: {
    r'time': PropertySchema(
      id: 0,
      name: r'time',
      type: IsarType.string,
    )
  },
  estimateSize: _timeEstimateSize,
  serialize: _timeSerialize,
  deserialize: _timeDeserialize,
  deserializeProp: _timeDeserializeProp,
);

int _timeEstimateSize(
  Time object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.time;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _timeSerialize(
  Time object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.time);
}

Time _timeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Time(
    time: reader.readStringOrNull(offsets[0]),
  );
  return object;
}

P _timeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TimeQueryFilter on QueryBuilder<Time, Time, QFilterCondition> {
  QueryBuilder<Time, Time, QAfterFilterCondition> timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'time',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<Time, Time, QAfterFilterCondition> timeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'time',
        value: '',
      ));
    });
  }
}

extension TimeQueryObject on QueryBuilder<Time, Time, QFilterCondition> {}
