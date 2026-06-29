import 'package:refily/controllers/mock_repository_provider.dart';
import 'package:refily/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_product_provider.g.dart';

@riverpod
Future<List<Product>> fetchProduct(Ref ref) async {
  final product = ref.watch(mockProductRepositoryProvider);
  return product.fetchAllProduct();
}

// *  Product Categories Provider

@riverpod
Future<List<String>> productCategories(Ref ref)async{
  final categoriesList = await ref.watch(fetchProductProvider.future);
  final distinctCategories = categoriesList.map((p) => p.category ).toSet().toList();
  print(" Distinct categories  $distinctCategories");
  return distinctCategories;

}
