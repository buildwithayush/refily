import 'package:refily/features/categories/data/datasource/mock_category_datasoure.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mock_category_data_source_provider.g.dart';
@riverpod
MockCategoryDatasource mockCategoryDatasource(Ref ref) {
  return MockCategoryDatasource();
}

