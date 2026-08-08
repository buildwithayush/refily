import 'package:refily/core/database/isar_provider.dart';
import 'package:refily/features/cart/data/datasource/local/cart_local_datasource.dart';
import 'package:refily/features/cart/data/repository/cart_repository_impl.dart';
import 'package:refily/features/cart/domain/models/cart_item.dart';
import 'package:refily/features/cart/domain/repositories/cart_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_providers.g.dart';

@riverpod
CartLocalDatasource cartLocalDatasource(Ref ref) {
  final isar = ref.watch(isarProvider);
  return CartLocalDatasource(isar);
}

@riverpod
CartRepository cartRepository(Ref ref) {
  final localDatasource = ref.watch(cartLocalDatasourceProvider);
  return CartRepositoryImpl(localDatasource);
}

//  Reactive Stream Provider for Cart Items
@Riverpod(keepAlive: true)
Stream<List<CartItem>> cartStream(Ref ref) {
  final repository = ref.watch(cartRepositoryProvider);
  
  return repository.watchCart();
}

/// . Cart Total Price Calculation Provider
@riverpod
double cartTotalPrice(Ref ref) {
  final cartAsync = ref.watch(cartStreamProvider);
  return cartAsync.when(
    data: (items) =>
        items.fold(0.0, (total, item) => total + (item.price * item.quantity)),
    loading: () => 0.0,
    error: (_, _) => 0.0,
  );
}

///  Cart Total Unique Items / Quantity Count Provider
@riverpod
int cartTotalCount(Ref ref) {
  final cartAsync = ref.watch(cartStreamProvider);
  return cartAsync.when(
    data: (items) => items.fold(0, (count, item) => count + item.quantity),
    loading: () => 0,
    error: (_, _) => 0,
  );
}
