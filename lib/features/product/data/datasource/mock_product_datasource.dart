import 'package:refily/features/product/data/mock/mock_product.dart';
import 'package:refily/features/product/data/models/product.dart';

class MockProductDatasource {
  Future<List<Product>> fetchAllProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    return products;
  }
}
