import 'package:refily/features/product/data/models/product.dart';

abstract class ProductRepository {
  Future<List<Product>> fetchAllProducts();
  Future<List<Product>> fetchProductsByCategory(int categoryId);
  Future<Product?> getProductById(int id);
  Future<List<Product>> getProductsByIds(List<int> ids);
}
