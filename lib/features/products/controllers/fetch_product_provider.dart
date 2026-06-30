import 'package:refily/features/products/controllers/mock_repository_provider.dart';
import 'package:refily/features/products/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_product_provider.g.dart';

@riverpod
Future<List<Product>> fetchProduct(Ref ref) async {
  final product = ref.watch(mockProductRepositoryProvider);
  return product.fetchAllProduct();
}

// *  Product Categories Provider

@riverpod
Future<List<String>> productCategories(Ref ref) async {
  final categoriesList = await ref.watch(fetchProductProvider.future);
  final distinctCategories = categoriesList
      .map((p) => p.category)
      .toSet()
      .toList();
  return distinctCategories;
}

@riverpod
class SearchQuery extends _$SearchQuery {
  @override
  String build() => '';

  void updateQuery(String query) {
    state = query;
  }
}

@riverpod
class SelectedCategory extends _$SelectedCategory {
  @override
  String build() => 'All';

  void selected(String category) {
    state = category;
  }
}

@riverpod
Future<List<Product>> filteredCategory(Ref ref) async {
  final allProducts = await ref.watch(fetchProductProvider.future);
  final query = ref.watch(searchQueryProvider);
  final activeCategory = ref.watch(selectedCategoryProvider);

  if (query.isNotEmpty) {
    await Future.delayed(const Duration(milliseconds: 500));
  }

  return allProducts.where((product) {
    final matchesCategories =
        activeCategory == 'All' || product.category == activeCategory;
    final matchesSearch =
        query.isEmpty || product.name.toLowerCase().contains(query);

    return matchesCategories && matchesSearch;
  }).toList();
}
