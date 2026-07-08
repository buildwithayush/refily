import 'package:refily/features/product/data/repository/mock_product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mock_repository_provider.g.dart';

@riverpod
MockProductRepository mockProductRepository(Ref ref) {
  return MockProductRepository();
}
