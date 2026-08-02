import 'package:refily/features/categories/data/datasource/local/categories_local_datasource.dart';
import 'package:refily/features/categories/data/datasource/remote/category_supabse_datasource.dart';
import 'package:refily/features/categories/domain/models/category.dart';
import 'package:refily/features/categories/domain/models/category_isar_model.dart';
import 'package:refily/features/categories/domain/repositories/category_repostiory.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoriesLocalDatasource _localDatasource;
  final CategorySupabaseDatasource _remoteDatasource;

  CategoryRepositoryImpl(this._localDatasource, this._remoteDatasource);

  @override
  Future<List<Category>> getCategories() async {
    final localModels = await _localDatasource.getAllCategories();
    return localModels.map((m) => m.toDomain()).toList();
  }

  @override
  Future<void> syncCategoriesWithRemote() async {
    try {
      final lastTimeSync = await _localDatasource.getLastUpdatedAt();

      final remoteCatgeories = await _remoteDatasource.fetchActiveCategories(
        updatedAfter: lastTimeSync,
      );
      if (remoteCatgeories.isNotEmpty) {
        final isarModels = remoteCatgeories
            .map((category) => CategoryIsarModel.fromDomain(category))
            .toList();
        await _localDatasource.saveCategories(isarModels);
      }
    } catch (e) {
      //
    }
  }
}
