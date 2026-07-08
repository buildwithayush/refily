import 'package:refily/features/product/data/datasource/mock_product_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mock_product_data_source_provider.g.dart';

@riverpod
MockProductDatasource mockProductDatasource(Ref ref) {
  return MockProductDatasource();
}
