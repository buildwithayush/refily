import 'package:isar_plus/isar_plus.dart';
import 'package:refily/features/categories/domain/models/category.dart';

part 'category_isar_model.g.dart';

@collection
class CategoryIsarModel {
  int id = 0;

  @Index(unique: true)
  final int categoryId;
  final String name;
  final String imageUrl;
  final DateTime updatedAt;

  CategoryIsarModel({
    required this.imageUrl,
    required this.name,
    required this.categoryId,
    required this.updatedAt,
  });

  Category toDomain() {
    return Category(
      categoryId: categoryId,
      name: name,
      imageUrl: imageUrl,
      updatedAt: updatedAt,
    );
  }

  factory CategoryIsarModel.fromDomain(Category category) {
    return CategoryIsarModel(
      imageUrl: category.imageUrl,
      name: category.name,
      categoryId: category.categoryId,
      updatedAt: category.updatedAt,
    );
  }
}
