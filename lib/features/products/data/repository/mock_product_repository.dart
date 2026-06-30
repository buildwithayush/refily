import 'package:refily/features/products/data/datasource/product_mock_datasource.dart';
import 'package:refily/features/products/models/product.dart';

class MockProductRepository {
  Future<List<Product>> fetchAllProduct() async {
    await Future.delayed(const Duration(seconds: 3));
    return products;
  }
}
