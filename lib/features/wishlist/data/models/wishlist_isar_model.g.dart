// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_isar_model.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetWishlistIsarModelCollection on Isar {
  IsarCollection<int, WishlistIsarModel> get wishlistIsarModels =>
      this.collection();
}

final WishlistIsarModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'WishlistIsarModel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(name: 'productId', type: IsarType.long),
      IsarPropertySchema(name: 'addedAt', type: IsarType.dateTime),
    ],
    indexes: [
      IsarIndexSchema(
        name: 'productId',
        properties: ["productId"],
        unique: true,
        hash: false,
      ),
    ],
  ),
  converter: IsarObjectConverter<int, WishlistIsarModel>(
    serialize: serializeWishlistIsarModel,
    deserialize: deserializeWishlistIsarModel,
    deserializeProperty: deserializeWishlistIsarModelProp,
  ),
  getEmbeddedSchemas: () => [],
);

@isarProtected
int serializeWishlistIsarModel(IsarWriter writer, WishlistIsarModel object) {
  IsarCore.writeLong(writer, 1, object.productId);
  IsarCore.writeLong(writer, 2, object.addedAt.toUtc().microsecondsSinceEpoch);
  return object.id;
}

@isarProtected
WishlistIsarModel deserializeWishlistIsarModel(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _productId;
  _productId = IsarCore.readLong(reader, 1);
  final DateTime _addedAt;
  {
    final value = IsarCore.readLong(reader, 2);
    if (value == -9223372036854775808) {
      _addedAt = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _addedAt = DateTime.fromMicrosecondsSinceEpoch(
        value,
        isUtc: true,
      ).toLocal();
    }
  }
  final object = WishlistIsarModel(
    id: _id,
    productId: _productId,
    addedAt: _addedAt,
  );
  return object;
}

@isarProtected
dynamic deserializeWishlistIsarModelProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      {
        final value = IsarCore.readLong(reader, 2);
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

sealed class _WishlistIsarModelUpdate {
  bool call({required int id, int? productId, DateTime? addedAt});
}

class _WishlistIsarModelUpdateImpl implements _WishlistIsarModelUpdate {
  const _WishlistIsarModelUpdateImpl(this.collection);

  final IsarCollection<int, WishlistIsarModel> collection;

  @override
  bool call({
    required int id,
    Object? productId = ignore,
    Object? addedAt = ignore,
  }) {
    return collection.updateProperties(
          [id],
          {
            if (productId != ignore) 1: productId as int?,
            if (addedAt != ignore) 2: addedAt as DateTime?,
          },
        ) >
        0;
  }
}

sealed class _WishlistIsarModelUpdateAll {
  int call({required List<int> id, int? productId, DateTime? addedAt});
}

class _WishlistIsarModelUpdateAllImpl implements _WishlistIsarModelUpdateAll {
  const _WishlistIsarModelUpdateAllImpl(this.collection);

  final IsarCollection<int, WishlistIsarModel> collection;

  @override
  int call({
    required List<int> id,
    Object? productId = ignore,
    Object? addedAt = ignore,
  }) {
    return collection.updateProperties(id, {
      if (productId != ignore) 1: productId as int?,
      if (addedAt != ignore) 2: addedAt as DateTime?,
    });
  }
}

extension WishlistIsarModelUpdate on IsarCollection<int, WishlistIsarModel> {
  _WishlistIsarModelUpdate get update => _WishlistIsarModelUpdateImpl(this);

  _WishlistIsarModelUpdateAll get updateAll =>
      _WishlistIsarModelUpdateAllImpl(this);
}

sealed class _WishlistIsarModelQueryUpdate {
  int call({int? productId, DateTime? addedAt});
}

class _WishlistIsarModelQueryUpdateImpl
    implements _WishlistIsarModelQueryUpdate {
  const _WishlistIsarModelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<WishlistIsarModel> query;
  final int? limit;

  @override
  int call({Object? productId = ignore, Object? addedAt = ignore}) {
    return query.updateProperties(limit: limit, {
      if (productId != ignore) 1: productId as int?,
      if (addedAt != ignore) 2: addedAt as DateTime?,
    });
  }
}

extension WishlistIsarModelQueryUpdate on IsarQuery<WishlistIsarModel> {
  _WishlistIsarModelQueryUpdate get updateFirst =>
      _WishlistIsarModelQueryUpdateImpl(this, limit: 1);

  _WishlistIsarModelQueryUpdate get updateAll =>
      _WishlistIsarModelQueryUpdateImpl(this);
}

class _WishlistIsarModelQueryBuilderUpdateImpl
    implements _WishlistIsarModelQueryUpdate {
  const _WishlistIsarModelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<WishlistIsarModel, WishlistIsarModel, QOperations> query;
  final int? limit;

  @override
  int call({Object? productId = ignore, Object? addedAt = ignore}) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (productId != ignore) 1: productId as int?,
        if (addedAt != ignore) 2: addedAt as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension WishlistIsarModelQueryBuilderUpdate
    on QueryBuilder<WishlistIsarModel, WishlistIsarModel, QOperations> {
  _WishlistIsarModelQueryUpdate get updateFirst =>
      _WishlistIsarModelQueryBuilderUpdateImpl(this, limit: 1);

  _WishlistIsarModelQueryUpdate get updateAll =>
      _WishlistIsarModelQueryBuilderUpdateImpl(this);
}

extension WishlistIsarModelQueryFilter
    on QueryBuilder<WishlistIsarModel, WishlistIsarModel, QFilterCondition> {
  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  idGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  idGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  idLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 0, value: value));
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  idLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  idBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 0, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  productIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  productIdGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  productIdGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  productIdLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 1, value: value));
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  productIdLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  productIdBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 1, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  addedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 2, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  addedAtGreaterThan(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 2, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  addedAtGreaterThanOrEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 2, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  addedAtLessThan(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 2, value: value));
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  addedAtLessThanOrEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 2, value: value),
      );
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterFilterCondition>
  addedAtBetween(DateTime lower, DateTime upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 2, lower: lower, upper: upper),
      );
    });
  }
}

extension WishlistIsarModelQueryObject
    on QueryBuilder<WishlistIsarModel, WishlistIsarModel, QFilterCondition> {}

extension WishlistIsarModelQuerySortBy
    on QueryBuilder<WishlistIsarModel, WishlistIsarModel, QSortBy> {
  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy>
  sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy>
  sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy>
  sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy>
  sortByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy>
  sortByAddedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension WishlistIsarModelQuerySortThenBy
    on QueryBuilder<WishlistIsarModel, WishlistIsarModel, QSortThenBy> {
  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy>
  thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy>
  thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy>
  thenByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterSortBy>
  thenByAddedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension WishlistIsarModelQueryWhereDistinct
    on QueryBuilder<WishlistIsarModel, WishlistIsarModel, QDistinct> {
  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterDistinct>
  distinctByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<WishlistIsarModel, WishlistIsarModel, QAfterDistinct>
  distinctByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }
}

extension WishlistIsarModelQueryProperty1
    on QueryBuilder<WishlistIsarModel, WishlistIsarModel, QProperty> {
  QueryBuilder<WishlistIsarModel, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<WishlistIsarModel, int, QAfterProperty> productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<WishlistIsarModel, DateTime, QAfterProperty> addedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension WishlistIsarModelQueryProperty2<R>
    on QueryBuilder<WishlistIsarModel, R, QAfterProperty> {
  QueryBuilder<WishlistIsarModel, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<WishlistIsarModel, (R, int), QAfterProperty>
  productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<WishlistIsarModel, (R, DateTime), QAfterProperty>
  addedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension WishlistIsarModelQueryProperty3<R1, R2>
    on QueryBuilder<WishlistIsarModel, (R1, R2), QAfterProperty> {
  QueryBuilder<WishlistIsarModel, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<WishlistIsarModel, (R1, R2, int), QOperations>
  productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<WishlistIsarModel, (R1, R2, DateTime), QOperations>
  addedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}
