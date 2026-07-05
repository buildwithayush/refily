import 'package:refily/features/home/controllers/fetch_product_provider.dart';
import 'package:refily/features/home/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail_provider.g.dart';

@riverpod
Future<Product> productDetail(Ref ref, int productId) async {
  final allProduct = await ref.watch(fetchProductProvider.future);
  return allProduct.firstWhere((product) => product.id == productId);
}

@riverpod
Future<List<Product>> relatedProducts(
  Ref ref, {
  required String category,
  required int currentProductId,
}) async {
  final allProducts = await ref.watch(fetchProductProvider.future);

  List<Product> matches = allProducts
      .where((p) => p.category == category && p.id != currentProductId)
      .toList();

  if (matches.length < 3) {
    final fallbacks = allProducts
        .where((p) => p.category != category && p.id != currentProductId)
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
