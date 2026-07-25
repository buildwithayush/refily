// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num).toInt(),
  categoryId: (json['category_id'] as num).toInt(),
  name: json['name'] as String,
  brand: json['brand'] as String,
  subcategory: json['subcategory'] as String,
  price: (json['price'] as num).toDouble(),
  originalPrice: (json['original_price'] as num).toDouble(),
  rating: (json['rating'] as num).toDouble(),
  reviewCount: (json['review_count'] as num).toInt(),
  description: json['description'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  stock: (json['stock'] as num).toInt(),
  specifications: Map<String, String>.from(json['specifications'] as Map),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'category_id': instance.categoryId,
  'name': instance.name,
  'brand': instance.brand,
  'subcategory': instance.subcategory,
  'price': instance.price,
  'original_price': instance.originalPrice,
  'rating': instance.rating,
  'review_count': instance.reviewCount,
  'description': instance.description,
  'images': instance.images,
  'stock': instance.stock,
  'specifications': instance.specifications,
  'tags': instance.tags,
};
