import 'package:refily/features/categories/domain/models/category.dart';
import 'package:refily/features/categories/presentation/controllers/category_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Category>> categories(Ref ref)async{
  final repository = ref.watch(categoryRepositoryProvider);

  
  await repository.syncCategoriesWithRemote();

  
  return repository.getCategories();
}