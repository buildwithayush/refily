import 'package:refily/features/categories/domain/models/category.dart';
import 'package:refily/features/product/data/models/product.dart';

extension CategoryListX on List<Category> {
 
  String findCategoryName({
    required int targetId,
    List<Product>? fallbackProducts,
  }) {
    if (isEmpty) return 'Products';

    // 1. Direct ID match
    try {
      return firstWhere((cat) => cat.categoryId == targetId).name;
    } catch (_) {}

    // 2. Product list fallback match
    if (fallbackProducts != null && fallbackProducts.isNotEmpty) {
      final productCatId = fallbackProducts.first.categoryId;
      try {
        return firstWhere((cat) => cat.categoryId == productCatId).name;
      } catch (_) {}
    }

    return 'Products';
  }
}
