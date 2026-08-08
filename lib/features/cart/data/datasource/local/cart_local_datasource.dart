import 'package:isar_plus/isar_plus.dart';
import 'package:refily/features/cart/domain/models/cart_item_isar_model.dart';

class CartLocalDatasource {
  final Isar isar;

  CartLocalDatasource(this.isar);

  /// Watch for changes in the cart items collection
  Stream<List<CartItemIsarModel>> watchCartItems() {
    return isar.cartItemIsarModels.where().watch(fireImmediately: true);
  }

  /// Get all cart items from the local database
  Future<List<CartItemIsarModel>> getCartItems() async {
    return isar.cartItemIsarModels.where().findAll();
  }
  

  /// Save or update a cart item in the local database
  Future<void> saveOrUpdateCartItem(
    CartItemIsarModel item,
    int quantityChange,
  ) async {
    await isar.writeAsync((isar) {
      final existing = isar.cartItemIsarModels
          .where()
          .productIdEqualTo(item.productId)
          .findFirst();

      if (existing != null) {
        final newQuantity = existing.quantity + quantityChange;

        if (newQuantity <= 0) {
          // Quantity 0 -> auto-delete
          isar.cartItemIsarModels.delete(existing.id);
        } else {
          //  Update quantity on existing item
          final updatedItem = existing.copyWith(quantity: newQuantity);
          isar.cartItemIsarModels.put(updatedItem);
        }
      } else if (quantityChange > 0) {
        // New Item Insert (Isar v4 Manual AutoIncrement)
        item.id = isar.cartItemIsarModels.autoIncrement();
        final newItem = item.copyWith( id: item.id, quantity: quantityChange);
        isar.cartItemIsarModels.put(newItem);
     

      }
    });
  }

  /// Delete a cart item from the local database by productId
  Future<void> deleteCartItem(int productId) async {
    await isar.writeAsync((isar) {
      final existing = isar.cartItemIsarModels
          .where()
          .productIdEqualTo(productId)
          .build()
          .findFirst();

      if (existing != null) {
        isar.cartItemIsarModels.delete(existing.id);
      }
    });
  }

  // Clear all cart items from the local database
  Future<void> clearCart() async {
    await isar.writeAsync((isar) {
      isar.cartItemIsarModels.clear();
    });
  }
}
