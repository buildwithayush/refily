import 'package:isar_plus/isar_plus.dart';
import 'package:refily/features/categories/domain/models/category_isar_model.dart';

class CategoriesLocalDatasource {
  final Isar isar;

  CategoriesLocalDatasource(this.isar);

  Future<List<CategoryIsarModel>> getAllCategories() async {
    return isar.categoryIsarModels.where().findAll();
  }

  Future<DateTime?> getLastUpdatedAt() async {
    final latest = isar.categoryIsarModels
        .where()
        .sortByUpdatedAtDesc()
        .findFirst();
    return latest?.updatedAt;
  }

  Future<void> saveCategories(List<CategoryIsarModel> categories) async {
    await isar.writeAsync((isar) {
      for (final category in categories) {
        final existing = isar.categoryIsarModels
            .where()
            .idEqualTo(category.id)
            .build()
            .findFirst();

        if (existing == null) {
          category.id = isar.categoryIsarModels.autoIncrement();
          isar.categoryIsarModels.put(category);
        } else if (existing.updatedAt.isBefore(category.updatedAt)) {
          category.id = existing.id;
          isar.categoryIsarModels.put(category);
        }
      }
    });
  }

  Future<CategoryIsarModel?> getCategoryById(int id) async {
    return isar.categoryIsarModels.where().idEqualTo(id).findFirst();
  }
}
