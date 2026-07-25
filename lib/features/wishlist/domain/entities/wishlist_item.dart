
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_item.freezed.dart';

@freezed
abstract class WishlistItem with _$WishlistItem {
 const factory WishlistItem({
  required int id,
    required int productId,
    required DateTime addedAt,
 }) = _WishListItem;
}