import 'package:refily/features/cart/data/datasource/local/cart_local_datasource.dart';
import 'package:refily/features/cart/domain/models/cart_item.dart';
import 'package:refily/features/cart/domain/models/cart_item_isar_model.dart';
import 'package:refily/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartLocalDatasource localDatasource;

  CartRepositoryImpl(this.localDatasource);

  @override
  Future<void> clearCart() {
    return localDatasource.clearCart();
  }

  @override
  Future<void> decrementItem(CartItem item) {
    final cartItemModel = CartItemIsarModel.fromDomain(item);
    return localDatasource.saveOrUpdateCartItem(cartItemModel, -1);
  }

  @override
  Future<void> incrementItem(CartItem item) {
    final cartItemModel = CartItemIsarModel.fromDomain(item);
    return localDatasource.saveOrUpdateCartItem(cartItemModel, 1);
  }

  @override
  Future<void> removeItem(int productId) {
    return localDatasource.deleteCartItem(productId);
  }

  @override
  Stream<List<CartItem>> watchCart() {
    return localDatasource.watchCartItems().map((isarModels) {
      return isarModels.map((model) => model.toDomain()).toList();
    });
  }
}
