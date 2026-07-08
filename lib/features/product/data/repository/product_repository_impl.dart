import 'package:refily/features/product/data/datasource/mock_product_datasource.dart';
import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final MockProductDatasource _datasource;

  ProductRepositoryImpl({required this._datasource});
  @override
  Future<List<Product>> fetchAllProducts() async {
    return _datasource.fetchAllProducts();
  }
}
