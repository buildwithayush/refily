import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/providers/product_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_stream_provider.g.dart';


@riverpod
Stream<List<Product>> productsStream(Ref ref) {
  final repository = ref.watch(productRepositoryProvider);
  return repository.watchAllProducts(); 
}
