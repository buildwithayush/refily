import 'package:refily/features/cart/domain/models/cart_item.dart';

abstract class CartRepository {
  Stream<List<CartItem>> watchCart();
  
  /// Increments quantity by 1 (or adds new item if not present)
  Future<void> incrementItem(CartItem item);
  
  /// Decrements quantity by 1 (removes item if quantity reaches 0)
  Future<void> decrementItem(CartItem item);

  /// Removes item directly regardless of quantity
  Future<void> removeItem(int productId);

  /// Clears entire cart
  Future<void> clearCart();
}