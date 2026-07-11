import 'package:refily/features/product/data/mock/mock_product.dart';
import 'package:refily/features/product/data/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_product_controller.g.dart';

@riverpod
Future<List<Product>> fetchCategoryProduct(Ref ref, int categoryId) async {
  await Future.delayed(const Duration(seconds: 1));

  final allProduct = products;

  final relatedProducts = allProduct
      .where((p) => p.categoryId == categoryId)
      .toList();

  return relatedProducts;
}
