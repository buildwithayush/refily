// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_isar_model.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetProductIsarModelCollection on Isar {
  IsarCollection<int, ProductIsarModel> get productIsarModels =>
      this.collection();
}

final ProductIsarModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ProductIsarModel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(name: 'remoteId', type: IsarType.long),
      IsarPropertySchema(name: 'categoryId', type: IsarType.long),
      IsarPropertySchema(name: 'name', type: IsarType.string),
      IsarPropertySchema(name: 'brand', type: IsarType.string),
      IsarPropertySchema(name: 'subcategory', type: IsarType.string),
      IsarPropertySchema(name: 'price', type: IsarType.double),
      IsarPropertySchema(name: 'originalPrice', type: IsarType.double),
      IsarPropertySchema(name: 'rating', type: IsarType.double),
      IsarPropertySchema(name: 'reviewCount', type: IsarType.long),
      IsarPropertySchema(name: 'description', type: IsarType.string),
      IsarPropertySchema(name: 'images', type: IsarType.stringList),
      IsarPropertySchema(name: 'stock', type: IsarType.long),
      IsarPropertySchema(name: 'specificationsKeys', type: IsarType.stringList),
      IsarPropertySchema(
        name: 'specificationsValues',
        type: IsarType.stringList,
      ),
      IsarPropertySchema(name: 'tags', type: IsarType.stringList),
      IsarPropertySchema(name: 'updatedAt', type: IsarType.dateTime),
      IsarPropertySchema(name: 'isDeleted', type: IsarType.bool),
    ],
    indexes: [
      IsarIndexSchema(
        name: 'remoteId',
        properties: ["remoteId"],
        unique: true,
        hash: false,
      ),
    ],
  ),
  converter: IsarObjectConverter<int, ProductIsarModel>(
    serialize: serializeProductIsarModel,
    deserialize: deserializeProductIsarModel,
    deserializeProperty: deserializeProductIsarModelProp,
  ),
  getEmbeddedSchemas: () => [],
);

@isarProtected
int serializeProductIsarModel(IsarWriter writer, ProductIsarModel object) {
  IsarCore.writeLong(writer, 1, object.remoteId);
  IsarCore.writeLong(writer, 2, object.categoryId);
  IsarCore.writeString(writer, 3, object.name);
  IsarCore.writeString(writer, 4, object.brand);
  IsarCore.writeString(writer, 5, object.subcategory);
  IsarCore.writeDouble(writer, 6, object.price);
  IsarCore.writeDouble(writer, 7, object.originalPrice);
  IsarCore.writeDouble(writer, 8, object.rating);
  IsarCore.writeLong(writer, 9, object.reviewCount);
  IsarCore.writeString(writer, 10, object.description);
  {
    final list = object.images;
    final listWriter = IsarCore.beginList(writer, 11, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeString(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeLong(writer, 12, object.stock);
  {
    final list = object.specificationsKeys;
    final listWriter = IsarCore.beginList(writer, 13, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeString(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  {
    final list = object.specificationsValues;
    final listWriter = IsarCore.beginList(writer, 14, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeString(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  {
    final list = object.tags;
    final listWriter = IsarCore.beginList(writer, 15, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeString(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeLong(
    writer,
    16,
    object.updatedAt.toUtc().microsecondsSinceEpoch,
  );
  IsarCore.writeBool(writer, 17, value: object.isDeleted);
  return object.id;
}

@isarProtected
ProductIsarModel deserializeProductIsarModel(IsarReader reader) {
  final int _remoteId;
  _remoteId = IsarCore.readLong(reader, 1);
  final int _categoryId;
  _categoryId = IsarCore.readLong(reader, 2);
  final String _name;
  _name = IsarCore.readString(reader, 3) ?? '';
  final String _brand;
  _brand = IsarCore.readString(reader, 4) ?? '';
  final String _subcategory;
  _subcategory = IsarCore.readString(reader, 5) ?? '';
  final double _price;
  _price = IsarCore.readDouble(reader, 6);
  final double _originalPrice;
  _originalPrice = IsarCore.readDouble(reader, 7);
  final double _rating;
  _rating = IsarCore.readDouble(reader, 8);
  final int _reviewCount;
  _reviewCount = IsarCore.readLong(reader, 9);
  final String _description;
  _description = IsarCore.readString(reader, 10) ?? '';
  final List<String> _images;
  {
    final length = IsarCore.readList(reader, 11, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _images = const <String>[];
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _images = list;
      }
    }
  }
  final int _stock;
  _stock = IsarCore.readLong(reader, 12);
  final List<String> _specificationsKeys;
  {
    final length = IsarCore.readList(reader, 13, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _specificationsKeys = const <String>[];
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _specificationsKeys = list;
      }
    }
  }
  final List<String> _specificationsValues;
  {
    final length = IsarCore.readList(reader, 14, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _specificationsValues = const <String>[];
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _specificationsValues = list;
      }
    }
  }
  final List<String> _tags;
  {
    final length = IsarCore.readList(reader, 15, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _tags = const <String>[];
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _tags = list;
      }
    }
  }
  final DateTime _updatedAt;
  {
    final value = IsarCore.readLong(reader, 16);
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
  final bool _isDeleted;
  _isDeleted = IsarCore.readBool(reader, 17);
  final object = ProductIsarModel(
    remoteId: _remoteId,
    categoryId: _categoryId,
    name: _name,
    brand: _brand,
    subcategory: _subcategory,
    price: _price,
    originalPrice: _originalPrice,
    rating: _rating,
    reviewCount: _reviewCount,
    description: _description,
    images: _images,
    stock: _stock,
    specificationsKeys: _specificationsKeys,
    specificationsValues: _specificationsValues,
    tags: _tags,
    updatedAt: _updatedAt,
    isDeleted: _isDeleted,
  );
  object.id = IsarCore.readId(reader);
  return object;
}

@isarProtected
dynamic deserializeProductIsarModelProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readLong(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readString(reader, 5) ?? '';
    case 6:
      return IsarCore.readDouble(reader, 6);
    case 7:
      return IsarCore.readDouble(reader, 7);
    case 8:
      return IsarCore.readDouble(reader, 8);
    case 9:
      return IsarCore.readLong(reader, 9);
    case 10:
      return IsarCore.readString(reader, 10) ?? '';
    case 11:
      {
        final length = IsarCore.readList(reader, 11, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <String>[];
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 12:
      return IsarCore.readLong(reader, 12);
    case 13:
      {
        final length = IsarCore.readList(reader, 13, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <String>[];
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 14:
      {
        final length = IsarCore.readList(reader, 14, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <String>[];
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 15:
      {
        final length = IsarCore.readList(reader, 15, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <String>[];
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 16:
      {
        final value = IsarCore.readLong(reader, 16);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(
            value,
            isUtc: true,
          ).toLocal();
        }
      }
    case 17:
      return IsarCore.readBool(reader, 17);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _ProductIsarModelUpdate {
  bool call({
    required int id,
    int? remoteId,
    int? categoryId,
    String? name,
    String? brand,
    String? subcategory,
    double? price,
    double? originalPrice,
    double? rating,
    int? reviewCount,
    String? description,
    int? stock,
    DateTime? updatedAt,
    bool? isDeleted,
  });
}

class _ProductIsarModelUpdateImpl implements _ProductIsarModelUpdate {
  const _ProductIsarModelUpdateImpl(this.collection);

  final IsarCollection<int, ProductIsarModel> collection;

  @override
  bool call({
    required int id,
    Object? remoteId = ignore,
    Object? categoryId = ignore,
    Object? name = ignore,
    Object? brand = ignore,
    Object? subcategory = ignore,
    Object? price = ignore,
    Object? originalPrice = ignore,
    Object? rating = ignore,
    Object? reviewCount = ignore,
    Object? description = ignore,
    Object? stock = ignore,
    Object? updatedAt = ignore,
    Object? isDeleted = ignore,
  }) {
    return collection.updateProperties(
          [id],
          {
            if (remoteId != ignore) 1: remoteId as int?,
            if (categoryId != ignore) 2: categoryId as int?,
            if (name != ignore) 3: name as String?,
            if (brand != ignore) 4: brand as String?,
            if (subcategory != ignore) 5: subcategory as String?,
            if (price != ignore) 6: price as double?,
            if (originalPrice != ignore) 7: originalPrice as double?,
            if (rating != ignore) 8: rating as double?,
            if (reviewCount != ignore) 9: reviewCount as int?,
            if (description != ignore) 10: description as String?,
            if (stock != ignore) 12: stock as int?,
            if (updatedAt != ignore) 16: updatedAt as DateTime?,
            if (isDeleted != ignore) 17: isDeleted as bool?,
          },
        ) >
        0;
  }
}

sealed class _ProductIsarModelUpdateAll {
  int call({
    required List<int> id,
    int? remoteId,
    int? categoryId,
    String? name,
    String? brand,
    String? subcategory,
    double? price,
    double? originalPrice,
    double? rating,
    int? reviewCount,
    String? description,
    int? stock,
    DateTime? updatedAt,
    bool? isDeleted,
  });
}

class _ProductIsarModelUpdateAllImpl implements _ProductIsarModelUpdateAll {
  const _ProductIsarModelUpdateAllImpl(this.collection);

  final IsarCollection<int, ProductIsarModel> collection;

  @override
  int call({
    required List<int> id,
    Object? remoteId = ignore,
    Object? categoryId = ignore,
    Object? name = ignore,
    Object? brand = ignore,
    Object? subcategory = ignore,
    Object? price = ignore,
    Object? originalPrice = ignore,
    Object? rating = ignore,
    Object? reviewCount = ignore,
    Object? description = ignore,
    Object? stock = ignore,
    Object? updatedAt = ignore,
    Object? isDeleted = ignore,
  }) {
    return collection.updateProperties(id, {
      if (remoteId != ignore) 1: remoteId as int?,
      if (categoryId != ignore) 2: categoryId as int?,
      if (name != ignore) 3: name as String?,
      if (brand != ignore) 4: brand as String?,
      if (subcategory != ignore) 5: subcategory as String?,
      if (price != ignore) 6: price as double?,
      if (originalPrice != ignore) 7: originalPrice as double?,
      if (rating != ignore) 8: rating as double?,
      if (reviewCount != ignore) 9: reviewCount as int?,
      if (description != ignore) 10: description as String?,
      if (stock != ignore) 12: stock as int?,
      if (updatedAt != ignore) 16: updatedAt as DateTime?,
      if (isDeleted != ignore) 17: isDeleted as bool?,
    });
  }
}

extension ProductIsarModelUpdate on IsarCollection<int, ProductIsarModel> {
  _ProductIsarModelUpdate get update => _ProductIsarModelUpdateImpl(this);

  _ProductIsarModelUpdateAll get updateAll =>
      _ProductIsarModelUpdateAllImpl(this);
}

sealed class _ProductIsarModelQueryUpdate {
  int call({
    int? remoteId,
    int? categoryId,
    String? name,
    String? brand,
    String? subcategory,
    double? price,
    double? originalPrice,
    double? rating,
    int? reviewCount,
    String? description,
    int? stock,
    DateTime? updatedAt,
    bool? isDeleted,
  });
}

class _ProductIsarModelQueryUpdateImpl implements _ProductIsarModelQueryUpdate {
  const _ProductIsarModelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<ProductIsarModel> query;
  final int? limit;

  @override
  int call({
    Object? remoteId = ignore,
    Object? categoryId = ignore,
    Object? name = ignore,
    Object? brand = ignore,
    Object? subcategory = ignore,
    Object? price = ignore,
    Object? originalPrice = ignore,
    Object? rating = ignore,
    Object? reviewCount = ignore,
    Object? description = ignore,
    Object? stock = ignore,
    Object? updatedAt = ignore,
    Object? isDeleted = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (remoteId != ignore) 1: remoteId as int?,
      if (categoryId != ignore) 2: categoryId as int?,
      if (name != ignore) 3: name as String?,
      if (brand != ignore) 4: brand as String?,
      if (subcategory != ignore) 5: subcategory as String?,
      if (price != ignore) 6: price as double?,
      if (originalPrice != ignore) 7: originalPrice as double?,
      if (rating != ignore) 8: rating as double?,
      if (reviewCount != ignore) 9: reviewCount as int?,
      if (description != ignore) 10: description as String?,
      if (stock != ignore) 12: stock as int?,
      if (updatedAt != ignore) 16: updatedAt as DateTime?,
      if (isDeleted != ignore) 17: isDeleted as bool?,
    });
  }
}

extension ProductIsarModelQueryUpdate on IsarQuery<ProductIsarModel> {
  _ProductIsarModelQueryUpdate get updateFirst =>
      _ProductIsarModelQueryUpdateImpl(this, limit: 1);

  _ProductIsarModelQueryUpdate get updateAll =>
      _ProductIsarModelQueryUpdateImpl(this);
}

class _ProductIsarModelQueryBuilderUpdateImpl
    implements _ProductIsarModelQueryUpdate {
  const _ProductIsarModelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<ProductIsarModel, ProductIsarModel, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? remoteId = ignore,
    Object? categoryId = ignore,
    Object? name = ignore,
    Object? brand = ignore,
    Object? subcategory = ignore,
    Object? price = ignore,
    Object? originalPrice = ignore,
    Object? rating = ignore,
    Object? reviewCount = ignore,
    Object? description = ignore,
    Object? stock = ignore,
    Object? updatedAt = ignore,
    Object? isDeleted = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (remoteId != ignore) 1: remoteId as int?,
        if (categoryId != ignore) 2: categoryId as int?,
        if (name != ignore) 3: name as String?,
        if (brand != ignore) 4: brand as String?,
        if (subcategory != ignore) 5: subcategory as String?,
        if (price != ignore) 6: price as double?,
        if (originalPrice != ignore) 7: originalPrice as double?,
        if (rating != ignore) 8: rating as double?,
        if (reviewCount != ignore) 9: reviewCount as int?,
        if (description != ignore) 10: description as String?,
        if (stock != ignore) 12: stock as int?,
        if (updatedAt != ignore) 16: updatedAt as DateTime?,
        if (isDeleted != ignore) 17: isDeleted as bool?,
      });
    } finally {
      q.close();
    }
  }
}

extension ProductIsarModelQueryBuilderUpdate
    on QueryBuilder<ProductIsarModel, ProductIsarModel, QOperations> {
  _ProductIsarModelQueryUpdate get updateFirst =>
      _ProductIsarModelQueryBuilderUpdateImpl(this, limit: 1);

  _ProductIsarModelQueryUpdate get updateAll =>
      _ProductIsarModelQueryBuilderUpdateImpl(this);
}

extension ProductIsarModelQueryFilter
    on QueryBuilder<ProductIsarModel, ProductIsarModel, QFilterCondition> {
  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  idGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  idGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  idLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 0, value: value));
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  idLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  idBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 0, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  remoteIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  remoteIdGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  remoteIdGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  remoteIdLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 1, value: value));
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  remoteIdLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  remoteIdBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 1, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  categoryIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 2, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  categoryIdGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 2, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  categoryIdGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 2, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  categoryIdLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 2, value: value));
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  categoryIdLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 2, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  categoryIdBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 2, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 3, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameGreaterThan(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameGreaterThanOrEqualTo(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 3, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameLessThanOrEqualTo(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameBetween(String lower, String upper, {bool caseSensitive = true}) {
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

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameStartsWith(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameEndsWith(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 3, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 3, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 4, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandGreaterThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandGreaterThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 4, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandLessThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandBetween(String lower, String upper, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 4, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  brandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 4, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 5, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryGreaterThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryGreaterThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 5, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryLessThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryBetween(String lower, String upper, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 5, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  subcategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 5, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  priceEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 6, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  priceGreaterThan(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 6, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  priceGreaterThanOrEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 6, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  priceLessThan(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 6, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  priceLessThanOrEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 6, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  priceBetween(double lower, double upper, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  originalPriceEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 7, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  originalPriceGreaterThan(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 7, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  originalPriceGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 7, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  originalPriceLessThan(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 7, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  originalPriceLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 7, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  originalPriceBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  ratingEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 8, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  ratingGreaterThan(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 8, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  ratingGreaterThanOrEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 8, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  ratingLessThan(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 8, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  ratingLessThanOrEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 8, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  ratingBetween(double lower, double upper, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  reviewCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 9, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  reviewCountGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 9, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  reviewCountGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 9, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  reviewCountLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 9, value: value));
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  reviewCountLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 9, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  reviewCountBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 9, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionGreaterThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionGreaterThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 10, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionLessThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionBetween(String lower, String upper, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 10,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 10, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 10, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementGreaterThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementGreaterThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 11, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementLessThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 11,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 11, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 11, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesIsEmpty() {
    return not().imagesIsNotEmpty();
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  imagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 11, value: null),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  stockEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 12, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  stockGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 12, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  stockGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 12, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  stockLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 12, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  stockLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 12, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  stockBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 12, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 13, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 13,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 13,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 13, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 13, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysIsEmpty() {
    return not().specificationsKeysIsNotEmpty();
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsKeysIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 13, value: null),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 14, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 14,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 14,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 14, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 14, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesIsEmpty() {
    return not().specificationsValuesIsNotEmpty();
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  specificationsValuesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 14, value: null),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementGreaterThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementGreaterThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 15, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementLessThanOrEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementBetween(String lower, String upper, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 15,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 15,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 15, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 15, value: ''),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsIsEmpty() {
    return not().tagsIsNotEmpty();
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 15, value: null),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 16, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  updatedAtGreaterThan(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 16, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  updatedAtGreaterThanOrEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 16, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  updatedAtLessThan(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 16, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  updatedAtLessThanOrEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 16, value: value),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  updatedAtBetween(DateTime lower, DateTime upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 16, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterFilterCondition>
  isDeletedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 17, value: value),
      );
    });
  }
}

extension ProductIsarModelQueryObject
    on QueryBuilder<ProductIsarModel, ProductIsarModel, QFilterCondition> {}

extension ProductIsarModelQuerySortBy
    on QueryBuilder<ProductIsarModel, ProductIsarModel, QSortBy> {
  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByRemoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy> sortByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy> sortByBrand({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByBrandDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortBySubcategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortBySubcategoryDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByOriginalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByOriginalPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByReviewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByReviewCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17, sort: Sort.desc);
    });
  }
}

extension ProductIsarModelQuerySortThenBy
    on QueryBuilder<ProductIsarModel, ProductIsarModel, QSortThenBy> {
  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByRemoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy> thenByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy> thenByBrand({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByBrandDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenBySubcategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenBySubcategoryDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByOriginalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByOriginalPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByReviewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByReviewCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterSortBy>
  thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17, sort: Sort.desc);
    });
  }
}

extension ProductIsarModelQueryWhereDistinct
    on QueryBuilder<ProductIsarModel, ProductIsarModel, QDistinct> {
  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByBrand({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctBySubcategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByOriginalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByReviewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(12);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctBySpecificationsKeys() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(13);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctBySpecificationsValues() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(14);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(15);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(16);
    });
  }

  QueryBuilder<ProductIsarModel, ProductIsarModel, QAfterDistinct>
  distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(17);
    });
  }
}

extension ProductIsarModelQueryProperty1
    on QueryBuilder<ProductIsarModel, ProductIsarModel, QProperty> {
  QueryBuilder<ProductIsarModel, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ProductIsarModel, int, QAfterProperty> remoteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ProductIsarModel, int, QAfterProperty> categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ProductIsarModel, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ProductIsarModel, String, QAfterProperty> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ProductIsarModel, String, QAfterProperty> subcategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ProductIsarModel, double, QAfterProperty> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ProductIsarModel, double, QAfterProperty>
  originalPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ProductIsarModel, double, QAfterProperty> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<ProductIsarModel, int, QAfterProperty> reviewCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<ProductIsarModel, String, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<ProductIsarModel, List<String>, QAfterProperty>
  imagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<ProductIsarModel, int, QAfterProperty> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<ProductIsarModel, List<String>, QAfterProperty>
  specificationsKeysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<ProductIsarModel, List<String>, QAfterProperty>
  specificationsValuesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<ProductIsarModel, List<String>, QAfterProperty> tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<ProductIsarModel, DateTime, QAfterProperty> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<ProductIsarModel, bool, QAfterProperty> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }
}

extension ProductIsarModelQueryProperty2<R>
    on QueryBuilder<ProductIsarModel, R, QAfterProperty> {
  QueryBuilder<ProductIsarModel, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ProductIsarModel, (R, int), QAfterProperty> remoteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ProductIsarModel, (R, int), QAfterProperty>
  categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ProductIsarModel, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ProductIsarModel, (R, String), QAfterProperty> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ProductIsarModel, (R, String), QAfterProperty>
  subcategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ProductIsarModel, (R, double), QAfterProperty> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ProductIsarModel, (R, double), QAfterProperty>
  originalPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ProductIsarModel, (R, double), QAfterProperty> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<ProductIsarModel, (R, int), QAfterProperty>
  reviewCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<ProductIsarModel, (R, String), QAfterProperty>
  descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<ProductIsarModel, (R, List<String>), QAfterProperty>
  imagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<ProductIsarModel, (R, int), QAfterProperty> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<ProductIsarModel, (R, List<String>), QAfterProperty>
  specificationsKeysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<ProductIsarModel, (R, List<String>), QAfterProperty>
  specificationsValuesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<ProductIsarModel, (R, List<String>), QAfterProperty>
  tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<ProductIsarModel, (R, DateTime), QAfterProperty>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<ProductIsarModel, (R, bool), QAfterProperty>
  isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }
}

extension ProductIsarModelQueryProperty3<R1, R2>
    on QueryBuilder<ProductIsarModel, (R1, R2), QAfterProperty> {
  QueryBuilder<ProductIsarModel, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, int), QOperations>
  remoteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, int), QOperations>
  categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, String), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, String), QOperations>
  brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, String), QOperations>
  subcategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, double), QOperations>
  priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, double), QOperations>
  originalPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, double), QOperations>
  ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, int), QOperations>
  reviewCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, String), QOperations>
  descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, List<String>), QOperations>
  imagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, int), QOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, List<String>), QOperations>
  specificationsKeysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, List<String>), QOperations>
  specificationsValuesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, List<String>), QOperations>
  tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, DateTime), QOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<ProductIsarModel, (R1, R2, bool), QOperations>
  isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }
}
