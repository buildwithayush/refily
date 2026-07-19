// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => _BannerModel(
  id: (json['id'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  redirectType: $enumDecode(_$BannerRedirectTypeEnumMap, json['redirect_type']),
  redirectId: (json['redirect_id'] as num?)?.toInt(),
  isActive: json['is_active'] as bool,
  displayOrder: (json['display_order'] as num).toInt(),
);

Map<String, dynamic> _$BannerModelToJson(_BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'redirect_type': _$BannerRedirectTypeEnumMap[instance.redirectType]!,
      'redirect_id': instance.redirectId,
      'is_active': instance.isActive,
      'display_order': instance.displayOrder,
    };

const _$BannerRedirectTypeEnumMap = {
  BannerRedirectType.category: 'category',
  BannerRedirectType.product: 'product',
  BannerRedirectType.external: 'external',
};
