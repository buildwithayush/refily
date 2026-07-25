import 'package:isar_plus/isar_plus.dart';
import 'package:refily/features/wishlist/data/datasource/local/wishlist_local_datasource.dart';
import 'package:refily/features/wishlist/data/models/wishlist_isar_model.dart';

class WishlistLocalDatasourceImpl implements WishlistLocalDatasource {
  final Isar isar;

  WishlistLocalDatasourceImpl(this.isar);

  @override
  Future<Set<WishlistIsarModel>> getWishlistItems() async {
    final items = isar.wishlistIsarModels.where().sortByIdDesc().findAll();
    return items.toSet();
  }

  @override
  Future<void> addToWishlist(int productId) async {
    final existingItem = isar.wishlistIsarModels
        .where()
        .productIdEqualTo(productId)
        .findFirst();

    await isar.writeAsync((isar) {
      final item = WishlistIsarModel(
        id: existingItem?.id ?? isar.wishlistIsarModels.autoIncrement(),
        productId: productId,
        addedAt: DateTime.now(),
      );

      isar.wishlistIsarModels.put(item);
    });
  }

  @override
  Future<void> removeFromWishList(int productId) async {
    final existingItem = isar.wishlistIsarModels
        .where()
        .productIdEqualTo(productId)
        .findFirst();

    if (existingItem != null) {
      await isar.writeAsync((isar) {
        isar.wishlistIsarModels.delete(existingItem.id);
      });
    }
  }

  @override
  Future<bool> isWishlisted(int productId) async {
    final count = isar.wishlistIsarModels
        .where()
        .productIdEqualTo(productId)
        .count();
    return count > 0;
  }

  @override
  Future<void> clearWishlist() async {
    await isar.writeAsync((isar) {
      isar.wishlistIsarModels.clear();
    });
  }
}
