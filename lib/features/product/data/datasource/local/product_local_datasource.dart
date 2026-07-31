import 'package:isar_plus/isar_plus.dart';
import 'package:refily/features/product/data/models/product_isar_model.dart';

class ProductLocalDatasource {
  final Isar isar;

  ProductLocalDatasource(this.isar);

  Stream<List<ProductIsarModel>> watchActiveProducts() {
    return isar.productIsarModels
        .where()
        .isDeletedEqualTo(false)
        .build()
        .watch(fireImmediately: true);
  }

  /// Batch update or delete products
  Future<void> saveOrUpdateProducts(List<ProductIsarModel> products) async {
    await isar.writeAsync((isar) {
      for (final product in products) {
        final existing = isar.productIsarModels
            .where()
            .remoteIdEqualTo(product.remoteId)
            .build()
            .findFirst();

        if (existing == null) {
          product.id = isar.productIsarModels.autoIncrement();
          isar.productIsarModels.put(product);
        } else if (existing.updatedAt.isBefore(product.updatedAt)) {
          product.id = existing.id;
          isar.productIsarModels.put(product);
        }
      }
    });
  }

  Future<DateTime?> getLastUpdatedTimestamp() async {
    final latestProduct = isar.productIsarModels
        .where()
        .sortByUpdatedAtDesc()
        .findFirst();
    return latestProduct?.updatedAt;
  }

  Future<ProductIsarModel?> getProductByRemoteId(int remoteId) async {
    return isar.productIsarModels
        .where()
        .remoteIdEqualTo(remoteId)
        .and()
        .isDeletedEqualTo(false)
        .findFirst();
  }

  Future<List<ProductIsarModel>> getProductsByCategory(int categoryId) async {
    return isar.productIsarModels
        .where()
        .categoryIdEqualTo(categoryId)
        .and()
        .isDeletedEqualTo(false)
        .findAll();
  }

  /// Get batch products by Remote IDs
  Future<List<ProductIsarModel>> getProductsByRemoteIds(
    List<int> remoteIds,
  ) async {
    return isar.productIsarModels
        .where()
        .anyOf(remoteIds, (q, id) => q.remoteIdEqualTo(id))
        .and()
        .isDeletedEqualTo(false)
        .findAll();
  }
}
