import 'package:refily/features/product/data/models/product.dart';

abstract class WishlistRepository {
  Future<Set<Product>> getWishlist();

  Future<void> addToWishlist(Product product);

  Future<void> removeFromWishlist(int productId);

  Future<bool> isWishlisted(int productId);
}
