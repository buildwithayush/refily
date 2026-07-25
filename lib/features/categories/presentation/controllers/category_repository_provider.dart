import 'package:refily/features/categories/data/repositories/category_repository_impl.dart';
import 'package:refily/features/categories/domain/repositories/category_repostiory.dart';
import 'package:refily/features/categories/presentation/controllers/category_database_provider.dart';
import 'package:refily/features/product/providers/product_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository_provider.g.dart';

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  final datasource = ref.watch(categorySupabaseDatasourceProvider);
  final productRepository = ref.watch(productRepositoryProvider);

  return CategoryRepositoryImpl(datasource, productRepository);
}
