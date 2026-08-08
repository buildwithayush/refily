import 'package:refily/features/categories/domain/models/category.dart';

abstract class CategoryRepository {
  Future<List<Category>> getCategories();
  Future<void> syncCategoriesWithRemote();
}
