import 'package:refily/features/categories/data/datasource/remote/category_supabse_datasource.dart';
import 'package:refily/features/categories/domain/models/category.dart';
import 'package:refily/features/categories/domain/repositories/category_repostiory.dart';
import 'package:refily/features/product/domain/repositories/product_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategorySupabaseDatasource _datasource;
  final ProductRepository _productRepository;

  CategoryRepositoryImpl(this._datasource, this._productRepository);

  @override
  Future<List<Category>> fetchActiveCategories() async {
    final products = await _productRepository.fetchAllProducts();

    final List<int> targetIds = products
        .map((p) => p.categoryId)
        .toSet()
        .toList();

    return await _datasource.getCategoriesByIds(targetIds);
  }
}
