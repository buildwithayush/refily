import 'dart:async';
import 'dart:io';
import 'package:refily/features/product/data/datasource/local/product_local_datasource.dart';
import 'package:refily/features/product/data/datasource/remote/product_supabase_datasource.dart';
import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/data/models/product_isar_model.dart';
import 'package:refily/features/product/domain/repositories/product_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductSupabaseDatasource _remoteDatasource;
  final ProductLocalDatasource _localDatasource;

  ProductRepositoryImpl({
    required this._localDatasource,
    required this._remoteDatasource,
  });

  /// ALL PRODUCTS: Instant Local Stream + Silent Background Sync
  @override
  Stream<List<Product>> watchAllProducts() {
    unawaited(syncProducts());

    return _localDatasource.watchActiveProducts().map((models) {
      return models.map((m) => m.toDomain()).toList();
    });
  }

  @override
  Future<void> syncProducts() async {
    final lastUpdatedAt = await _localDatasource.getLastUpdatedTimestamp();

    try {
      final rawJsonList = await _remoteDatasource.getProductsUpdatedAfter(
        lastUpdatedAt,
      );
      if (rawJsonList.isNotEmpty) {
        final products = rawJsonList
            .map((json) => Product.fromJson(json))
            .toList();

        final isarModels = products
            .map((p) => ProductIsarModel.fromDomain(p))
            .toList();
        await _localDatasource.saveOrUpdateProducts(isarModels);
      }
    } on SocketException {
      return;
    } on PostgrestException {
      return;
    } catch (e) {
      return;
    }
  }

  @override
  Future<List<Product>> fetchProductsByCategory(int categoryId) async {
    final localModels = await _localDatasource.getProductsByCategory(
      categoryId,
    );

    return localModels.map((m) => m.toDomain()).toList();
  }

  @override
  Future<Product?> getProductById(int id) async {
    final localModel = await _localDatasource.getProductByRemoteId(id);

    return localModel?.toDomain();
  }

  @override
  Future<List<Product>> getProductsByIds(List<int> ids) async {
    if (ids.isEmpty) return [];

    final localModels = await _localDatasource.getProductsByRemoteIds(ids);
    return localModels.map((m) => m.toDomain()).toList();
  }
}
