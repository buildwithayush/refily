import 'package:refily/features/product/data/datasource/remote/product_supabase_datasource.dart';
import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductSupabaseDatasource _datasource;

  ProductRepositoryImpl({required this._datasource});

  @override
  Future<List<Product>> fetchAllProducts() async {
    final rawList = await _datasource.getAllProducts();
    return rawList.map((json) => Product.fromJson(json)).toList();
  }

  @override
  Future<List<Product>> fetchProductsByCategory(int categoryId) async {
    final rawList = await _datasource.getProductsByCategory(categoryId);
    return rawList.map((json) => Product.fromJson(json)).toList();
  }

  @override
  Future<Product?> getProductById(int id) async {
    final rawData = await _datasource.getProductById(id);
    if (rawData == null) return null;
    return Product.fromJson(rawData);
  }

  @override
  Future<List<Product>> getProductsByIds(List<int> ids) async {
    if (ids.isEmpty) return [];
    final rawList = await _datasource.getProductsByIds(ids);
    return rawList.map((json) => Product.fromJson(json)).toList();
  }
}

