import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refily/core/theme/theme_extension.dart';
import 'package:refily/features/cart/presentation/controller/cart_controller.dart';
import 'package:refily/features/home/models/product.dart';

class DetailQuantitySelector extends ConsumerWidget {
  final Product product;
  const DetailQuantitySelector({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartMap = ref.watch(cartControllerProvider);
    final isInCart = cartMap.containsKey(product.id);
    final currentQty = isInCart ? cartMap[product.id]!.quantity : 0;

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
                            onPressed: () => ref
                                .read(cartControllerProvider.notifier)
                                .decrementQuantity(product.id),
                          ),
                          Text(
                            '$currentQty',
                            style: context.textTheme.titleMedium,
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () => ref
                                .read(cartControllerProvider.notifier)
                                .addToCart(product),
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
                                  .read(cartControllerProvider.notifier)
                                  .addToCart(product);
                            },
                      child: Text(
                        product.stock <= 0 ? "Out of Stock" : "Add to Cart",
                      ),
                    ),
            ),
            const SizedBox(width: 16),

            // Right Side: Buy Now Button
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
