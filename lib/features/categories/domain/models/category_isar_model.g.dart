// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_isar_model.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetCategoryIsarModelCollection on Isar {
  IsarCollection<int, CategoryIsarModel> get categoryIsarModels =>
      this.collection();
}

final CategoryIsarModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'CategoryIsarModel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(name: 'categoryId', type: IsarType.long),
      IsarPropertySchema(name: 'name', type: IsarType.string),
      IsarPropertySchema(name: 'imageUrl', type: IsarType.string),
      IsarPropertySchema(name: 'updatedAt', type: IsarType.dateTime),
    ],
    indexes: [
      IsarIndexSchema(
        name: 'categoryId',
        properties: ["categoryId"],
        unique: true,
        hash: false,
      ),
    ],
  ),
  converter: IsarObjectConverter<int, CategoryIsarModel>(
    serialize: serializeCategoryIsarModel,
    deserialize: deserializeCategoryIsarModel,
    deserializeProperty: deserializeCategoryIsarModelProp,
  ),
  getEmbeddedSchemas: () => [],
);

@isarProtected
int serializeCategoryIsarModel(IsarWriter writer, CategoryIsarModel object) {
  IsarCore.writeLong(writer, 1, object.categoryId);
  IsarCore.writeString(writer, 2, object.name);
  IsarCore.writeString(writer, 3, object.imageUrl);
  IsarCore.writeLong(
    writer,
    4,
    object.updatedAt.toUtc().microsecondsSinceEpoch,
  );
  return object.id;
}

@isarProtected
CategoryIsarModel deserializeCategoryIsarModel(IsarReader reader) {
  final int _categoryId;
  _categoryId = IsarCore.readLong(reader, 1);
  final String _name;
  _name = IsarCore.readString(reader, 2) ?? '';
  final String _imageUrl;
  _imageUrl = IsarCore.readString(reader, 3) ?? '';
  final DateTime _updatedAt;
  {
    final value = IsarCore.readLong(reader, 4);
    if (value == -9223372036854775808) {
      _updatedAt = DateTime.fromMillisecondsSinceEpoch(
        0,
        isUtc: true,
      ).toLocal();
    } else {
      _updatedAt = DateTime.fromMicrosecondsSinceEpoch(
        value,
        isUtc: true,
      ).toLocal();
    }
  }
  final object = CategoryIsarModel(
    categoryId: _categoryId,
    name: _name,
    imageUrl: _imageUrl,
    updatedAt: _updatedAt,
  );
  object.id = IsarCore.readId(reader);
  return object;
}

@isarProtected
dynamic deserializeCategoryIsarModelProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      {
        final value = IsarCore.readLong(reader, 4);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(
            value,
            isUtc: true,
          ).toLocal();
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _CategoryIsarModelUpdate {
  bool call({
    required int id,
    int? categoryId,
    String? name,
    String? imageUrl,
    DateTime? updatedAt,
  });
}

class _CategoryIsarModelUpdateImpl implements _CategoryIsarModelUpdate {
  const _CategoryIsarModelUpdateImpl(this.collection);

  final IsarCollection<int, CategoryIsarModel> collection;

  @override
  bool call({
    required int id,
    Object? categoryId = ignore,
    Object? name = ignore,
    Object? imageUrl = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties(
          [id],
          {
            if (categoryId != ignore) 1: categoryId as int?,
            if (name != ignore) 2: name as String?,
            if (imageUrl != ignore) 3: imageUrl as String?,
            if (updatedAt != ignore) 4: updatedAt as DateTime?,
          },
        ) >
        0;
  }
}

sealed class _CategoryIsarModelUpdateAll {
  int call({
    required List<int> id,
    int? categoryId,
    String? name,
    String? imageUrl,
    DateTime? updatedAt,
  });
}

class _CategoryIsarModelUpdateAllImpl implements _CategoryIsarModelUpdateAll {
  const _CategoryIsarModelUpdateAllImpl(this.collection);

  final IsarCollection<int, CategoryIsarModel> collection;

  @override
  int call({
    required List<int> id,
    Object? categoryId = ignore,
    Object? name = ignore,
    Object? imageUrl = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties(id, {
      if (categoryId != ignore) 1: categoryId as int?,
      if (name != ignore) 2: name as String?,
      if (imageUrl != ignore) 3: imageUrl as String?,
      if (updatedAt != ignore) 4: updatedAt as DateTime?,
    });
  }
}

extension CategoryIsarModelUpdate on IsarCollection<int, CategoryIsarModel> {
  _CategoryIsarModelUpdate get update => _CategoryIsarModelUpdateImpl(this);

  _CategoryIsarModelUpdateAll get updateAll =>
      _CategoryIsarModelUpdateAllImpl(this);
}

sealed class _CategoryIsarModelQueryUpdate {
  int call({
    int? categoryId,
    String? name,
    String? imageUrl,
    DateTime? updatedAt,
  });
}

class _CategoryIsarModelQueryUpdateImpl
    implements _CategoryIsarModelQueryUpdate {
  const _CategoryIsarModelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<CategoryIsarModel> query;
  final int? limit;

  @override
  int call({
    Object? categoryId = ignore,
    Object? name = ignore,
    Object? imageUrl = ignore,
    Object? updatedAt = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (categoryId != ignore) 1: categoryId as int?,
      if (name != ignore) 2: name as String?,
      if (imageUrl != ignore) 3: imageUrl as String?,
      if (updatedAt != ignore) 4: updatedAt as DateTime?,
    });
  }
}

extension CategoryIsarModelQueryUpdate on IsarQuery<CategoryIsarModel> {
  _CategoryIsarModelQueryUpdate get updateFirst =>
      _CategoryIsarModelQueryUpdateImpl(this, limit: 1);

  _CategoryIsarModelQueryUpdate get updateAll =>
      _CategoryIsarModelQueryUpdateImpl(this);
}

class _CategoryIsarModelQueryBuilderUpdateImpl
    implements _CategoryIsarModelQueryUpdate {
  const _CategoryIsarModelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<CategoryIsarModel, CategoryIsarModel, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? categoryId = ignore,
    Object? name = ignore,
    Object? imageUrl = ignore,
    Object? updatedAt = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (categoryId != ignore) 1: categoryId as int?,
        if (name != ignore) 2: name as String?,
        if (imageUrl != ignore) 3: imageUrl as String?,
        if (updatedAt != ignore) 4: updatedAt as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension CategoryIsarModelQueryBuilderUpdate
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QOperations> {
  _CategoryIsarModelQueryUpdate get updateFirst =>
      _CategoryIsarModelQueryBuilderUpdateImpl(this, limit: 1);

  _CategoryIsarModelQueryUpdate get updateAll =>
      _CategoryIsarModelQueryBuilderUpdateImpl(this);
}

extension CategoryIsarModelQueryFilter
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QFilterCondition> {
  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  idGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  idGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  idLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 0, value: value));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  idLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  idBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 0, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  categoryIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  categoryIdGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  categoryIdGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  categoryIdLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 1, value: value));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  categoryIdLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  categoryIdBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 1, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 2, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameGreaterThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameGreaterThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 2, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameLessThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameBetween(String lower, String upper, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 2, value: ''),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 2, value: ''),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 3, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlGreaterThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlGreaterThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 3, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlLessThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlBetween(String lower, String upper, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 3, value: ''),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 3, value: ''),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 4, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  updatedAtGreaterThan(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 4, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  updatedAtGreaterThanOrEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 4, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  updatedAtLessThan(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 4, value: value));
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  updatedAtLessThanOrEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 4, value: value),
      );
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterFilterCondition>
  updatedAtBetween(DateTime lower, DateTime upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 4, lower: lower, upper: upper),
      );
    });
  }
}

extension CategoryIsarModelQueryObject
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QFilterCondition> {}

extension CategoryIsarModelQuerySortBy
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QSortBy> {
  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy> sortByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  sortByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  sortByImageUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  sortByImageUrlDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }
}

extension CategoryIsarModelQuerySortThenBy
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QSortThenBy> {
  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy> thenByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  thenByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  thenByImageUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  thenByImageUrlDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }
}

extension CategoryIsarModelQueryWhereDistinct
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QDistinct> {
  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterDistinct>
  distinctByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterDistinct>
  distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterDistinct>
  distinctByImageUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CategoryIsarModel, CategoryIsarModel, QAfterDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }
}

extension CategoryIsarModelQueryProperty1
    on QueryBuilder<CategoryIsarModel, CategoryIsarModel, QProperty> {
  QueryBuilder<CategoryIsarModel, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CategoryIsarModel, int, QAfterProperty> categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CategoryIsarModel, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<CategoryIsarModel, String, QAfterProperty> imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<CategoryIsarModel, DateTime, QAfterProperty>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension CategoryIsarModelQueryProperty2<R>
    on QueryBuilder<CategoryIsarModel, R, QAfterProperty> {
  QueryBuilder<CategoryIsarModel, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CategoryIsarModel, (R, int), QAfterProperty>
  categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CategoryIsarModel, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<CategoryIsarModel, (R, String), QAfterProperty>
  imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<CategoryIsarModel, (R, DateTime), QAfterProperty>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension CategoryIsarModelQueryProperty3<R1, R2>
    on QueryBuilder<CategoryIsarModel, (R1, R2), QAfterProperty> {
  QueryBuilder<CategoryIsarModel, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CategoryIsarModel, (R1, R2, int), QOperations>
  categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CategoryIsarModel, (R1, R2, String), QOperations>
  nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<CategoryIsarModel, (R1, R2, String), QOperations>
  imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<CategoryIsarModel, (R1, R2, DateTime), QOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}
