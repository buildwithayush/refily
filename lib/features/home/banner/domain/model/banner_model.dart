import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refily/features/home/banner/domain/enum/banner_redirect_type.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
abstract class BannerModel with _$BannerModel {
  const factory BannerModel({
    required int id,

    @JsonKey(name: 'image_url') required String imageUrl,

    @JsonKey(name: 'redirect_type') required BannerRedirectType redirectType,

    @JsonKey(name: 'redirect_id') required int redirectId,

    @JsonKey(name: 'is_active') required bool isActive,

    @JsonKey(name: 'display_order') required int displayOrder,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}
