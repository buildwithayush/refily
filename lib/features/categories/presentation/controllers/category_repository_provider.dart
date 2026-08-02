import 'package:refily/features/categories/data/repositories/category_repository_impl.dart';
import 'package:refily/features/categories/domain/repositories/category_repostiory.dart';
import 'package:refily/features/categories/providers/categories_local_datasource_provider.dart';
import 'package:refily/features/categories/providers/category_supabase_datasource_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository_provider.g.dart';

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  final remoteDatasource = ref.watch(categorySupabaseDatasourceProvider);
 final localDatasource = ref.watch(categoriesLocalDatasourceProvider);

  return CategoryRepositoryImpl(localDatasource, remoteDatasource);
}
