
import 'package:refily/features/categories/data/mock/mock_category.dart';
import 'package:refily/features/categories/domain/models/category.dart';

class MockCategoryDatasource {
  Future<List<Category>> getCategories() async {
    await Future.delayed(const Duration(seconds: 2));
    return categories;
  }
}
