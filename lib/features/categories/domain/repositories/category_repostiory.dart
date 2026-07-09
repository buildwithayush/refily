import 'package:refily/features/categories/domain/models/category_model.dart';

abstract class CategoryRepository {
  Future<List<Category>> fetchAllCategories();
}
