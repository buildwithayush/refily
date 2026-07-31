import 'package:refily/features/categories/domain/models/category.dart';
import 'package:refily/features/categories/presentation/controllers/category_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_controller.g.dart';

@riverpod
Future<List<Category>> categoryController(Ref ref) {
  final repository = ref.watch(categoryRepositoryProvider);
  return repository.fetchActiveCategories();
}
