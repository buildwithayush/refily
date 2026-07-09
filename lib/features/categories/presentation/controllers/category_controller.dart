

import 'package:refily/features/categories/domain/models/category_model.dart';
import 'package:refily/features/categories/providers/category_repository_impl_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_controller.g.dart';

@riverpod

Future<List<Category>> categoryController(Ref ref) async {
  final repository = ref.watch(categoryRepositoryProvider);
  return await repository.fetchAllCategories();
}