// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num).toInt(),
  categoryId: (json['categoryId'] as num).toInt(),
  name: json['name'] as String,
  brand: json['brand'] as String,
  category: json['category'] as String,
  subcategory: json['subcategory'] as String,
  price: (json['price'] as num).toDouble(),
  originalPrice: (json['originalPrice'] as num).toDouble(),
  rating: (json['rating'] as num).toDouble(),
  reviewCount: (json['reviewCount'] as num).toInt(),
  description: json['description'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  stock: (json['stock'] as num).toInt(),
  specifications: Map<String, String>.from(json['specifications'] as Map),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'categoryId': instance.categoryId,
  'name': instance.name,
  'brand': instance.brand,
  'category': instance.category,
  'subcategory': instance.subcategory,
  'price': instance.price,
  'originalPrice': instance.originalPrice,
  'rating': instance.rating,
  'reviewCount': instance.reviewCount,
  'description': instance.description,
  'images': instance.images,
  'stock': instance.stock,
  'specifications': instance.specifications,
  'tags': instance.tags,
};
