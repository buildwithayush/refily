import 'package:refily/features/wishlist/data/models/wishlist_isar_model.dart';

abstract class WishlistLocalDatasource {
  Future<Set<WishlistIsarModel>> getWishlistItems();
  Future<void> addToWishlist(int productId);
  Future<void> removeFromWishList(int productId);
  Future<bool> isWishlisted(int productId);
  Future<void> clearWishlist();
}
