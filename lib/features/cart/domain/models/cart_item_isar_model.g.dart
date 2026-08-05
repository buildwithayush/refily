// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_isar_model.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetCartItemIsarModelCollection on Isar {
  IsarCollection<int, CartItemIsarModel> get cartItemIsarModels =>
      this.collection();
}

final CartItemIsarModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'CartItemIsarModel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(name: 'productId', type: IsarType.long),
      IsarPropertySchema(name: 'name', type: IsarType.string),
      IsarPropertySchema(name: 'brand', type: IsarType.string),
      IsarPropertySchema(name: 'price', type: IsarType.double),
      IsarPropertySchema(name: 'image', type: IsarType.string),
      IsarPropertySchema(name: 'rating', type: IsarType.double),
      IsarPropertySchema(name: 'quantity', type: IsarType.long),
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
  converter: IsarObjectConverter<int, CartItemIsarModel>(
    serialize: serializeCartItemIsarModel,
    deserialize: deserializeCartItemIsarModel,
    deserializeProperty: deserializeCartItemIsarModelProp,
  ),
  getEmbeddedSchemas: () => [],
);

@isarProtected
int serializeCartItemIsarModel(IsarWriter writer, CartItemIsarModel object) {
  IsarCore.writeLong(writer, 1, object.productId);
  IsarCore.writeString(writer, 2, object.name);
  IsarCore.writeString(writer, 3, object.brand);
  IsarCore.writeDouble(writer, 4, object.price);
  IsarCore.writeString(writer, 5, object.image);
  IsarCore.writeDouble(writer, 6, object.rating);
  IsarCore.writeLong(writer, 7, object.quantity);
  return object.id;
}

@isarProtected
CartItemIsarModel deserializeCartItemIsarModel(IsarReader reader) {
  final int _productId;
  _productId = IsarCore.readLong(reader, 1);
  final String _name;
  _name = IsarCore.readString(reader, 2) ?? '';
  final String _brand;
  _brand = IsarCore.readString(reader, 3) ?? '';
  final double _price;
  _price = IsarCore.readDouble(reader, 4);
  final String _image;
  _image = IsarCore.readString(reader, 5) ?? '';
  final double _rating;
  _rating = IsarCore.readDouble(reader, 6);
  final int _quantity;
  _quantity = IsarCore.readLong(reader, 7);
  final object = CartItemIsarModel(
    productId: _productId,
    name: _name,
    brand: _brand,
    price: _price,
    image: _image,
    rating: _rating,
    quantity: _quantity,
  );
  object.id = IsarCore.readId(reader);
  return object;
}

@isarProtected
dynamic deserializeCartItemIsarModelProp(IsarReader reader, int property) {
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
      return IsarCore.readDouble(reader, 4);
    case 5:
      return IsarCore.readString(reader, 5) ?? '';
    case 6:
      return IsarCore.readDouble(reader, 6);
    case 7:
      return IsarCore.readLong(reader, 7);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _CartItemIsarModelUpdate {
  bool call({
    required int id,
    int? productId,
    String? name,
    String? brand,
    double? price,
    String? image,
    double? rating,
    int? quantity,
  });
}

class _CartItemIsarModelUpdateImpl implements _CartItemIsarModelUpdate {
  const _CartItemIsarModelUpdateImpl(this.collection);

  final IsarCollection<int, CartItemIsarModel> collection;

  @override
  bool call({
    required int id,
    Object? productId = ignore,
    Object? name = ignore,
    Object? brand = ignore,
    Object? price = ignore,
    Object? image = ignore,
    Object? rating = ignore,
    Object? quantity = ignore,
  }) {
    return collection.updateProperties(
          [id],
          {
            if (productId != ignore) 1: productId as int?,
            if (name != ignore) 2: name as String?,
            if (brand != ignore) 3: brand as String?,
            if (price != ignore) 4: price as double?,
            if (image != ignore) 5: image as String?,
            if (rating != ignore) 6: rating as double?,
            if (quantity != ignore) 7: quantity as int?,
          },
        ) >
        0;
  }
}

sealed class _CartItemIsarModelUpdateAll {
  int call({
    required List<int> id,
    int? productId,
    String? name,
    String? brand,
    double? price,
    String? image,
    double? rating,
    int? quantity,
  });
}

class _CartItemIsarModelUpdateAllImpl implements _CartItemIsarModelUpdateAll {
  const _CartItemIsarModelUpdateAllImpl(this.collection);

  final IsarCollection<int, CartItemIsarModel> collection;

  @override
  int call({
    required List<int> id,
    Object? productId = ignore,
    Object? name = ignore,
    Object? brand = ignore,
    Object? price = ignore,
    Object? image = ignore,
    Object? rating = ignore,
    Object? quantity = ignore,
  }) {
    return collection.updateProperties(id, {
      if (productId != ignore) 1: productId as int?,
      if (name != ignore) 2: name as String?,
      if (brand != ignore) 3: brand as String?,
      if (price != ignore) 4: price as double?,
      if (image != ignore) 5: image as String?,
      if (rating != ignore) 6: rating as double?,
      if (quantity != ignore) 7: quantity as int?,
    });
  }
}

extension CartItemIsarModelUpdate on IsarCollection<int, CartItemIsarModel> {
  _CartItemIsarModelUpdate get update => _CartItemIsarModelUpdateImpl(this);

  _CartItemIsarModelUpdateAll get updateAll =>
      _CartItemIsarModelUpdateAllImpl(this);
}

sealed class _CartItemIsarModelQueryUpdate {
  int call({
    int? productId,
    String? name,
    String? brand,
    double? price,
    String? image,
    double? rating,
    int? quantity,
  });
}

class _CartItemIsarModelQueryUpdateImpl
    implements _CartItemIsarModelQueryUpdate {
  const _CartItemIsarModelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<CartItemIsarModel> query;
  final int? limit;

  @override
  int call({
    Object? productId = ignore,
    Object? name = ignore,
    Object? brand = ignore,
    Object? price = ignore,
    Object? image = ignore,
    Object? rating = ignore,
    Object? quantity = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (productId != ignore) 1: productId as int?,
      if (name != ignore) 2: name as String?,
      if (brand != ignore) 3: brand as String?,
      if (price != ignore) 4: price as double?,
      if (image != ignore) 5: image as String?,
      if (rating != ignore) 6: rating as double?,
      if (quantity != ignore) 7: quantity as int?,
    });
  }
}

extension CartItemIsarModelQueryUpdate on IsarQuery<CartItemIsarModel> {
  _CartItemIsarModelQueryUpdate get updateFirst =>
      _CartItemIsarModelQueryUpdateImpl(this, limit: 1);

  _CartItemIsarModelQueryUpdate get updateAll =>
      _CartItemIsarModelQueryUpdateImpl(this);
}

class _CartItemIsarModelQueryBuilderUpdateImpl
    implements _CartItemIsarModelQueryUpdate {
  const _CartItemIsarModelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<CartItemIsarModel, CartItemIsarModel, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? productId = ignore,
    Object? name = ignore,
    Object? brand = ignore,
    Object? price = ignore,
    Object? image = ignore,
    Object? rating = ignore,
    Object? quantity = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (productId != ignore) 1: productId as int?,
        if (name != ignore) 2: name as String?,
        if (brand != ignore) 3: brand as String?,
        if (price != ignore) 4: price as double?,
        if (image != ignore) 5: image as String?,
        if (rating != ignore) 6: rating as double?,
        if (quantity != ignore) 7: quantity as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension CartItemIsarModelQueryBuilderUpdate
    on QueryBuilder<CartItemIsarModel, CartItemIsarModel, QOperations> {
  _CartItemIsarModelQueryUpdate get updateFirst =>
      _CartItemIsarModelQueryBuilderUpdateImpl(this, limit: 1);

  _CartItemIsarModelQueryUpdate get updateAll =>
      _CartItemIsarModelQueryBuilderUpdateImpl(this);
}

extension CartItemIsarModelQueryFilter
    on QueryBuilder<CartItemIsarModel, CartItemIsarModel, QFilterCondition> {
  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  idGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  idGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  idLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 0, value: value));
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  idLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 0, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  idBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 0, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  productIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  productIdGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  productIdGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  productIdLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 1, value: value));
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  productIdLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 1, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  productIdBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 1, lower: lower, upper: upper),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  nameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 2, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  nameLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 2, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 2, value: ''),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 2, value: ''),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 3, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandGreaterThan(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandGreaterThanOrEqualTo(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 3, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandLessThanOrEqualTo(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandBetween(String lower, String upper, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandStartsWith(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandEndsWith(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 3, value: ''),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  brandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 3, value: ''),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  priceEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 4, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  priceGreaterThan(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 4, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  priceGreaterThanOrEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 4, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  priceLessThan(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 4, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  priceLessThanOrEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 4, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  priceBetween(double lower, double upper, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 5, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageGreaterThan(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageGreaterThanOrEqualTo(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageLessThan(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 5, value: value, caseSensitive: caseSensitive),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageLessThanOrEqualTo(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageBetween(String lower, String upper, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageStartsWith(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageEndsWith(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(property: 5, value: ''),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(property: 5, value: ''),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  ratingEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 6, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  ratingGreaterThan(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 6, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  ratingGreaterThanOrEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 6, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  ratingLessThan(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(property: 6, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  ratingLessThanOrEqualTo(double value, {double epsilon = Filter.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 6, value: value, epsilon: epsilon),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  ratingBetween(double lower, double upper, {double epsilon = Filter.epsilon}) {
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

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  quantityEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(property: 7, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  quantityGreaterThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(property: 7, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  quantityGreaterThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(property: 7, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  quantityLessThan(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(LessCondition(property: 7, value: value));
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  quantityLessThanOrEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(property: 7, value: value),
      );
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterFilterCondition>
  quantityBetween(int lower, int upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(property: 7, lower: lower, upper: upper),
      );
    });
  }
}

extension CartItemIsarModelQueryObject
    on QueryBuilder<CartItemIsarModel, CartItemIsarModel, QFilterCondition> {}

extension CartItemIsarModelQuerySortBy
    on QueryBuilder<CartItemIsarModel, CartItemIsarModel, QSortBy> {
  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy> sortByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy> sortByBrand({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByBrandDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy> sortByImage({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByImageDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }
}

extension CartItemIsarModelQuerySortThenBy
    on QueryBuilder<CartItemIsarModel, CartItemIsarModel, QSortThenBy> {
  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy> thenByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy> thenByBrand({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByBrandDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy> thenByImage({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByImageDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterSortBy>
  thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }
}

extension CartItemIsarModelQueryWhereDistinct
    on QueryBuilder<CartItemIsarModel, CartItemIsarModel, QDistinct> {
  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterDistinct>
  distinctByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterDistinct>
  distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterDistinct>
  distinctByBrand({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterDistinct>
  distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterDistinct>
  distinctByImage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterDistinct>
  distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }

  QueryBuilder<CartItemIsarModel, CartItemIsarModel, QAfterDistinct>
  distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }
}

extension CartItemIsarModelQueryProperty1
    on QueryBuilder<CartItemIsarModel, CartItemIsarModel, QProperty> {
  QueryBuilder<CartItemIsarModel, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CartItemIsarModel, int, QAfterProperty> productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CartItemIsarModel, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<CartItemIsarModel, String, QAfterProperty> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<CartItemIsarModel, double, QAfterProperty> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<CartItemIsarModel, String, QAfterProperty> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<CartItemIsarModel, double, QAfterProperty> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<CartItemIsarModel, int, QAfterProperty> quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}

extension CartItemIsarModelQueryProperty2<R>
    on QueryBuilder<CartItemIsarModel, R, QAfterProperty> {
  QueryBuilder<CartItemIsarModel, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CartItemIsarModel, (R, int), QAfterProperty>
  productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CartItemIsarModel, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<CartItemIsarModel, (R, String), QAfterProperty> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<CartItemIsarModel, (R, double), QAfterProperty> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<CartItemIsarModel, (R, String), QAfterProperty> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<CartItemIsarModel, (R, double), QAfterProperty>
  ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<CartItemIsarModel, (R, int), QAfterProperty> quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}

extension CartItemIsarModelQueryProperty3<R1, R2>
    on QueryBuilder<CartItemIsarModel, (R1, R2), QAfterProperty> {
  QueryBuilder<CartItemIsarModel, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CartItemIsarModel, (R1, R2, int), QOperations>
  productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CartItemIsarModel, (R1, R2, String), QOperations>
  nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<CartItemIsarModel, (R1, R2, String), QOperations>
  brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<CartItemIsarModel, (R1, R2, double), QOperations>
  priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<CartItemIsarModel, (R1, R2, String), QOperations>
  imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<CartItemIsarModel, (R1, R2, double), QOperations>
  ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<CartItemIsarModel, (R1, R2, int), QOperations>
  quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}
