import 'package:refily/features/categories/presentation/controllers/category_controller.dart';
import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/providers/product_datasource_providers.dart';
import 'package:refily/features/product/providers/products_stream_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_product_provider.g.dart';

@riverpod
Stream<List<Product>> fetchProducts(Ref ref) {
  final datasource = ref.watch(productLocalDatasourceProvider);
  return datasource.watchActiveProducts().map(
    (isarModels) => isarModels.map((m) => m.toDomain()).toList(),
  );
}

@riverpod
Future<List<String>> productCategories(Ref ref) async {
  final catgeories = await ref.watch(categoryControllerProvider.future);
  return catgeories.map((c) => c.name).toList();
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
AsyncValue<List<Product>> filteredProducts(Ref ref) {
  //  Primary Isar Stream Watch
  final productsAsync = ref.watch(productsStreamProvider);

  //  UI Input States Read
  final query = ref.watch(searchQueryProvider).trim().toLowerCase();
  final activeCategoryName = ref.watch(selectedCategoryProvider).trim();

  //  Category Catalog Extract
  final categoriesCatalog = ref.watch(categoryControllerProvider).value ?? [];

  // Active Category Name -> categoryId
  int? targetCategoryId;
  if (activeCategoryName.toLowerCase() != 'all' && categoriesCatalog.isNotEmpty) {
    final matchedCategory = categoriesCatalog
        .where((c) => c.name.trim().toLowerCase() == activeCategoryName.toLowerCase())
        .firstOrNull;

    targetCategoryId = matchedCategory?.id;
  }

  // 4. Zero-Latency Synchronous Filter Pipeline
  return productsAsync.whenData((productList) {
    return productList.where((product) {
      // Category Filter Match
      bool matchesCategory = true;
      if (activeCategoryName.toLowerCase() != 'all') {
        if (targetCategoryId != null) {
          // ID level matching
          matchesCategory = (product.categoryId == targetCategoryId);
        } else {
          matchesCategory = true; 
        }
      }

      // Search Text Filter Match (Name or Brand)
      final matchesSearch = query.isEmpty ||
          product.name.toLowerCase().contains(query) ||
          product.brand.toLowerCase().contains(query);

      return matchesCategory && matchesSearch;
    }).toList();
  });
}
