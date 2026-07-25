import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/providers/product_repository_provider.dart';
import 'package:refily/features/wishlist/presentation/controllers/wishlist_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wishlist_products_provider.g.dart';

@riverpod
Future<List<Product>> fetchWishlistProducts(Ref ref) async {
  
  final wishlistAsync = ref.watch(wishlistControllerProvider);
  final wishlistSet = wishlistAsync.value ?? {};

  if (wishlistSet.isEmpty) return [];

  final List<int> productIds =
      wishlistSet.map((item) => item.productId).toList();

  
  final productRepository = ref.watch(productRepositoryProvider);
  
  return await productRepository.getProductsByIds(productIds);
}