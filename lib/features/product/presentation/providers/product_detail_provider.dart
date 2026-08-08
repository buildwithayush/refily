import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/providers/product_datasource_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail_provider.g.dart';

@riverpod
Future<Product> productDetail(Ref ref, int productId) async {
  final datasource = ref.watch(productLocalDatasourceProvider);
  final isarProduct = await datasource.getProductByRemoteId(productId);
  if (isarProduct == null || isarProduct.isDeleted) {
    throw Exception('Product with ID $productId not found in local storage.');
  }
  return isarProduct.toDomain();
}

@riverpod
Future<List<Product>> relatedProducts(
  Ref ref, {
  required int categoryId,
  required int currentProductId,
}) async {
  final datasource = ref.watch(productLocalDatasourceProvider);
  final isarData = await datasource.getProductsByCategory(categoryId);

  List<Product> matches = isarData
      .where(
        (model) =>
            model.categoryId == categoryId && model.id != currentProductId,
      )
      .map((model) => model.toDomain())
      .toList();

  if (matches.length < 3) {
    final fallbacks = isarData
        .where(
          (model) =>
              model.categoryId != categoryId && model.id != currentProductId,
        )
        .map((model) => model.toDomain())
        .toList();
    matches.addAll(fallbacks);
  }

  return matches.take(6).toList();
}

@riverpod
class WishList extends _$WishList {
  @override
  Set<int> build() {
    return {};
  }

  void toggleFavorite(int productId) {
    final currentSet = Set<int>.from(state);

    if (currentSet.contains(productId)) {
      currentSet.remove(productId);
    } else {
      currentSet.add(productId);
    }

    state = currentSet;
  }
}
