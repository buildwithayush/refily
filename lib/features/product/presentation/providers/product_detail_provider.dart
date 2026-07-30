import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/providers/product_datasource_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail_provider.g.dart';

@riverpod
Future<Product> productDetail(Ref ref, int productId) async {
  final datasource = ref.watch(productSupabaseDatasourceProvider);
  final rawList = await datasource.getAllProducts();

  final allProducts = rawList.map((json) => Product.fromJson(json)).toList();

  return allProducts.firstWhere(
    (product) => product.id == productId,
    orElse: () => throw Exception(
      'Target product item not found inside global storage collections',
    ),
  );
}

@riverpod
Future<List<Product>> relatedProducts(
  Ref ref, {
  required int categoryId,
  required int currentProductId,
}) async {
  final datasource = ref.watch(productSupabaseDatasourceProvider);
  final rawList = await datasource.getAllProducts();
  final allProducts = rawList.map((json) => Product.fromJson(json)).toList();

  List<Product> matches = allProducts
      .where((p) => p.categoryId == categoryId && p.id != currentProductId)
      .toList();

  if (matches.length < 3) {
    final fallbacks = allProducts
        .where((p) => p.categoryId != categoryId && p.id != currentProductId)
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
