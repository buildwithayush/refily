import 'package:refily/features/product/data/repository/product_repository_impl.dart';
import 'package:refily/features/product/domain/repositories/product_repository.dart';
import 'package:refily/features/product/providers/mock_product_data_source_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository_impl_provider.g.dart';

@riverpod
ProductRepository productRepository(Ref ref){
  final datasource = ref.watch(mockProductDatasourceProvider);
  return ProductRepositoryImpl(datasource: datasource);

}