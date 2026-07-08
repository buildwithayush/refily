import 'package:refily/features/cart/domain/models/cart_item.dart';
import 'package:refily/features/product/data/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_controller.g.dart';

@Riverpod(keepAlive: true)
class CartController extends _$CartController {
  @override
  Map<int, CartItem> build() {
    return const {};
  }

  // * Add To Cart / Increment Qumatity
  void addToCart(Product product) {
    final currentMap = Map<int, CartItem>.from(state);

    if (currentMap.containsKey(product.id)) {
      currentMap[product.id] = currentMap[product.id]!.copyWith(
        quantity: currentMap[product.id]!.quantity + 1,
      );
    } else {
      currentMap[product.id] = CartItem(product: product, quantity: 1);
    }
    state = currentMap;
  }

  // * Decrement Quantity
  void decrementQuantity(int productId) {
    final currentMap = Map<int, CartItem>.from(state);

    if (!currentMap.containsKey(productId)) return;

    final currentQuantity = currentMap[productId]!.quantity;
    if (currentQuantity <= 1) {
      currentMap.remove(productId);
    } else {
      currentMap[productId] = currentMap[productId]!.copyWith(
        quantity: currentQuantity - 1,
      );
    }
    state = currentMap;
  }

  // * Remove Item Completely From Cart
  void removeItem(int productId) {
    final currentMap = Map<int, CartItem>.from(state);
    currentMap.remove(productId);
    state = currentMap;
  }
}

// * ==========================================
// * COMPUTED PROVIDERS (Real-time Calculations)
// * ==========================================

@Riverpod(keepAlive: true)
int cartCount(Ref ref) {
  final cartMap = ref.watch(cartControllerProvider);
  int count = 0;

  cartMap.forEach((key, cartItem) {
    count += cartItem.quantity;
  });

  return count;
}

@Riverpod(keepAlive: true)
double cartTotal(Ref ref) {
  final cartMap = ref.watch(cartControllerProvider);

  double total = 0.0;

  cartMap.forEach((productId, cartItem) {
    total += cartItem.product.price * cartItem.quantity;
  });

  return total;
}

@Riverpod(keepAlive: true)
List<CartItem> cartList(Ref ref) {
  final cartMap = ref.watch(cartControllerProvider);

  return cartMap.values.toList();
}
