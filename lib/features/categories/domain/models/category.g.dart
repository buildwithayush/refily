// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  name: json['name'] as String,
  categoryId: (json['id'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'name': instance.name,
  'id': instance.categoryId,
  'image_url': instance.imageUrl,
  'updated_at': instance.updatedAt.toIso8601String(),
};
