import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/providers/product_datasource_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_products_provider.g.dart'; 

/// FETCH PRODUCTS BY TARGET CATEGORY ID
@riverpod
Future<List<Product>> fetchCategoryProduct(Ref ref, int categoryId) async {
  
  final datasource = ref.watch(productSupabaseDatasourceProvider);
  
 
  final rawList = await datasource.getAllProducts();
  
  
  final allProducts = rawList.map((json) => Product.fromJson(json)).toList();

  
  return allProducts.where((product) => product.categoryId == categoryId).toList();
}