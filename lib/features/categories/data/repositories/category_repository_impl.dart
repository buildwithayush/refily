import 'package:refily/features/categories/data/datasource/remote/category_supabse_datasource.dart';
import 'package:refily/features/categories/domain/models/category.dart';
import 'package:refily/features/categories/domain/repositories/category_repostiory.dart';
import 'package:refily/features/product/domain/repositories/product_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategorySupabaseDatasource _datasource;
  final ProductRepository _productRepository;

  CategoryRepositoryImpl(this._datasource, this._productRepository);

  @override
  Stream<List<Category>> fetchActiveCategories() async* {
    yield* _productRepository.watchAllProducts().asyncMap((products) async {
      final targetIds = products.map((p) => p.categoryId).toSet().toList();
      return await _datasource.getCategoriesByIds(targetIds);
    });
  }
}
