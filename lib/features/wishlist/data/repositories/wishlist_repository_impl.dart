import 'package:refily/features/wishlist/data/datasource/local/wishlist_local_datasource.dart';
import 'package:refily/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:refily/features/wishlist/domain/repositories/wishlist_repository.dart';

class WishlistRepositoryImpl implements WishlistRepository {
  final WishlistLocalDatasource localDataSource;

  WishlistRepositoryImpl({required this.localDataSource});

  @override
  Future<Set<WishlistItem>> getWishlist() async {
    final models = await localDataSource.getWishlistItems();
    return models.map((model) => model.toDomain()).toSet();
  }

  @override
  Future<void> addToWishlist(int productId) async {
    await localDataSource.addToWishlist(productId);
  }

  @override
  Future<void> removeFromWishlist(int productId) async {
    await localDataSource.removeFromWishList(productId);
  }

  @override
  Future<bool> isWishlisted(int productId) async {
    return await localDataSource.isWishlisted(productId);
  }

  @override
  Future<void> clearWishlist() async {
    await localDataSource.clearWishlist();
  }
}
