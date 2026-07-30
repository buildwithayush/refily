import 'package:refily/features/categories/domain/models/category.dart';

abstract class CategoryRepository {
  Stream<List<Category>> fetchActiveCategories();
}
