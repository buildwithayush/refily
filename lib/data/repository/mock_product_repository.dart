import 'package:refily/data/datasource/product_mock_datasource.dart';
import 'package:refily/models/product.dart';

class MockProductRepository {
  Future<List<Product>> fetchAllProduct() async {
    await Future.delayed(const Duration(seconds: 2));
    return products;
  }
}
