import 'package:refily/controllers/mock_repository_provider.dart';
import 'package:refily/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_product_provider.g.dart';

@riverpod
Future<List<Product>> fetchProduct(Ref ref) async {
  final product = ref.watch(mockProductRepositoryProvider);
  return product.fetchAllProduct();
}
