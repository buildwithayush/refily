import 'package:refily/features/product/data/datasource/remote/product_supabase_datasource.dart';
import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductSupabaseDatasource _datasource;

  ProductRepositoryImpl({required this._datasource});
  @override
  Future<List<Product>> fetchProductsByCategory(int categoryId) async {
    final rawList = await _datasource.getProductsByCategory(categoryId);

    return rawList.map((json) => Product.fromJson(json)).toList();
  }

  @override
  Future<List<Product>> fetchAllProducts() async {
    final rawList = await _datasource.getAllProducts();
    return rawList.map((json) => Product.fromJson(json)).toList();
  }
}
