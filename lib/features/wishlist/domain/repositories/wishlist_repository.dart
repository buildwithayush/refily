import 'package:refily/features/wishlist/domain/entities/wishlist_item.dart';

abstract class WishlistRepository {
  Future<Set<WishlistItem>> getWishlist();
  Future<void> addToWishlist(int productId);
  Future<void> removeFromWishlist(int productId);
  Future<bool> isWishlisted(int productId);
  Future<void> clearWishlist();
}
