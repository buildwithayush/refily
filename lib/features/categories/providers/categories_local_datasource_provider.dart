import 'package:refily/core/database/isar_provider.dart';
import 'package:refily/features/categories/data/datasource/local/categories_local_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_local_datasource_provider.g.dart';


@riverpod
CategoriesLocalDatasource categoriesLocalDatasource(Ref ref){
  final isar = ref.watch(isarProvider);
  return CategoriesLocalDatasource(isar);
}

