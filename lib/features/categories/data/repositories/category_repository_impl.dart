import 'package:refily/features/categories/data/datasource/mock_category_datasoure.dart';
import 'package:refily/features/categories/domain/models/category.dart';
import 'package:refily/features/categories/domain/repositories/category_repostiory.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final MockCategoryDatasource _datasource;

  CategoryRepositoryImpl({required this._datasource});
  @override
  Future<List<Category>> fetchAllCategories() async {
    return _datasource.getCategories();
  }
}
