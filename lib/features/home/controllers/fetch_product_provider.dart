import 'package:refily/features/categories/presentation/controllers/category_controller.dart';
import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/providers/product_datasource_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_product_provider.g.dart';

@riverpod
Future<List<Product>> fetchProduct(Ref ref) async {
  final datasource = ref.watch(productSupabaseDatasourceProvider);
  final rawList = await datasource.getAllProducts();
  return rawList.map((json) => Product.fromJson(json)).toList();
}

@riverpod
Future<List<String>> productCategories(Ref ref) async {
  final datasource = ref.watch(productSupabaseDatasourceProvider);
  final rawList = await datasource.getAllProducts();

  final allProducts = rawList.map((json) => Product.fromJson(json)).toList();
  final categoriesCatalog = await ref.watch(categoryControllerProvider.future);

  final usedCategoryIds = allProducts.map((p) => p.categoryId).toSet();

  return categoriesCatalog
      .where((c) => usedCategoryIds.contains(c.id))
      .map((c) => c.name)
      .toList();
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
  final query = ref.watch(searchQueryProvider).trim().toLowerCase();

  
  if (query.isNotEmpty) {
    
    bool isCancelled = false;

   
    final keepAliveLink = ref.keepAlive();

    
    ref.onDispose(() {
      isCancelled = true;
      keepAliveLink
          .close(); 
    });

    // 350ms hold execution framework for fast keyboard entry loops
    await Future.delayed(const Duration(milliseconds: 350));

    // Critical state check validation return drop path
    if (isCancelled) return [];
  }

  //  Fetch remote source catalog matrix safely after the debounce gate passes
  final datasource = ref.watch(productSupabaseDatasourceProvider);
  final rawList = await datasource.getAllProducts();
  final allProducts = rawList.map((json) => Product.fromJson(json)).toList();

  final activeCategoryName = ref.watch(selectedCategoryProvider);
  final categoriesCatalog = await ref.watch(categoryControllerProvider.future);

  //  SECURE RE-MAPPING FOR STRING CATEGORIES TO INTEGER ID
  int? targetCategoryId;
  if (activeCategoryName != 'All') {
    final matchedCategory = categoriesCatalog.firstWhere(
      (c) => c.name.toLowerCase() == activeCategoryName.toLowerCase(),
      orElse: () => throw Exception(
        'Correlated active category identifier missing in layout state map',
      ),
    );
    targetCategoryId = matchedCategory.id;
  }

  //  DATA FILTERING LOOP
  return allProducts.where((product) {
    final matchesCategories =
        activeCategoryName == 'All' || product.categoryId == targetCategoryId;

    final matchesSearch =
        query.isEmpty ||
        product.name.toLowerCase().contains(query) ||
        product.brand.toLowerCase().contains(query);

    return matchesCategories && matchesSearch;
  }).toList();
}
