import 'package:refily/features/categories/data/repositories/category_repository_impl.dart';
import 'package:refily/features/categories/domain/repositories/category_repostiory.dart';
import 'package:refily/features/categories/providers/mock_category_data_source_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository_impl_provider.g.dart';

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  final datasource = ref.watch(mockCategoryDatasourceProvider);
  return CategoryRepositoryImpl(datasource: datasource);
}
