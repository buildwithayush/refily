import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/wishlist/domain/repositories/wishlist_repository.dart';

class WishlistRepositoryImpl implements WishlistRepository {
  final Set<Product> _inMemoryWishlist = {};

  @override
  Future<Set<Product>> getWishlist() async {
    return Set.unmodifiable(_inMemoryWishlist);
  }

  @override
  Future<void> addToWishlist(Product product) async {
    _inMemoryWishlist.add(product);
  }

  @override
  Future<void> removeFromWishlist(int productId) async {
    _inMemoryWishlist.removeWhere((p) => p.id == productId);
  }

  @override
  Future<bool> isWishlisted(int productId) async {
    return _inMemoryWishlist.any((p) => p.id == productId);
  }
}
