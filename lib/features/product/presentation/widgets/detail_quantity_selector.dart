import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refily/core/theme/theme_extension.dart';
import 'package:refily/features/cart/providers/cart_providers.dart';
import 'package:refily/features/categories/domain/extension/product_mappers_ext.dart';
import 'package:refily/features/product/data/models/product.dart';

class DetailQuantitySelector extends ConsumerWidget {
  final Product product;
  const DetailQuantitySelector({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //  Listen to continuous cart stream
    final cartListAsync = ref.watch(cartStreamProvider);

    // 2 Extract cart items or default to empty list
    final cartList = cartListAsync.maybeWhen(
      data: (items) => items,
      orElse: () => [],
    );

    //  Find if current product is already in cart
    final cartItemIndex = cartList.indexWhere(
      (item) => item.productId == product.id,
    );
    final isInCart = cartItemIndex != -1;
    final currentItem = isInCart ? cartList[cartItemIndex] : null;
   

    //  Prepare CartItem for increment/decrement operations
    final cartItem = currentItem ?? product.toCartItem();
 final currentQty = currentItem?.quantity ?? 0;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            // Left Side: Add / Quantity Selector Switch
            Expanded(
              child: isInCart
                  ? Container(
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400]!),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              ref
                                  .read(cartRepositoryProvider)
                                  .decrementItem(cartItem);
                            },
                          ),
                          Text(
                            '$currentQty',
                            style: context.textTheme.titleMedium,
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              ref
                                  .read(cartRepositoryProvider)
                                  .incrementItem(cartItem);
                            },
                          ),
                        ],
                      ),
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.colorScheme.surface,
                        foregroundColor: context.colorScheme.primary,
                        side: BorderSide(color: context.colorScheme.primary),
                        minimumSize: const Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: product.stock <= 0
                          ? null
                          : () {
                              ref
                                  .read(cartRepositoryProvider)
                                  .incrementItem(cartItem);
                            },
                      child: Text(
                        product.stock <= 0 ? "Out of Stock" : "Add to Cart",
                      ),
                    ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.primary,
                  foregroundColor: context.colorScheme.onPrimary,
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: product.stock <= 0
                    ? null
                    : () {
                        // Future checkout routing
                      },
                child: const Text("Buy Now"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
