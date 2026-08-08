import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refily/core/theme/theme_extension.dart';
import 'package:refily/core/widgets/network/cached_product_image.dart';
import 'package:refily/features/cart/providers/cart_providers.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // * STATE PROVIDERS
    final cartAsync = ref.watch(cartStreamProvider);
    final cartListItemQuantity = ref.watch(cartTotalCountProvider);

    // * COMPUTED PROVIDERS
    final totalAmount = ref.watch(cartTotalPriceProvider);

    return Scaffold(
      // Premium subtle background color
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(59.0),
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.02),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text('My Cart', style: context.textTheme.titleLarge),
                  const Spacer(),

                  Text(
                    '$cartListItemQuantity Items',
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: cartListItemQuantity == 0
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 80,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Your cart is empty",
                    style: context.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Add items to get started!",
                    style: context.textTheme.titleMedium?.copyWith(
                      color: Colors.white30,
                    ),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                // 1. Cart Items List
                Expanded(
                  child: cartAsync.when(
                    data: (cartItems) {
                      if (cartItems.isEmpty) {
                        return const Center(child: Text('Your Cart Is Empty'));
                      }
                      return ListView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        itemCount: cartItems.length,
                        itemBuilder: (context, index) {
                          final cartItem = cartItems[index];
                          final itemTotal = cartItem.price * cartItem.quantity;

                          return Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.surface,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.02),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                // Product Image Container
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: theme
                                        .colorScheme
                                        .surfaceContainerHighest
                                        .withValues(alpha: 0.3),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: AppCachedImage(
                                    imageUrl: cartItem.image,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                                const SizedBox(width: 14),

                                // Product Details (Name & Price)
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cartItem.name,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: context.textTheme.titleMedium,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        "₹$itemTotal",
                                        style: context.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                ),

                                // Quantity Controls Stack (Add / Minus / Counter)
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        constraints: const BoxConstraints(),
                                        padding: const EdgeInsets.all(8),
                                        icon: const Icon(
                                          Icons.remove,
                                          size: 16,
                                        ),
                                        onPressed: () => ref
                                            .read(cartRepositoryProvider)
                                            .decrementItem(cartItem),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0,
                                        ),
                                        child: Text(
                                          '${cartItem.quantity}',
                                          style: context.textTheme.titleMedium,
                                        ),
                                      ),
                                      IconButton(
                                        constraints: const BoxConstraints(),
                                        padding: const EdgeInsets.all(8),
                                        icon: const Icon(Icons.add, size: 16),
                                        onPressed: () => ref
                                            .read(cartRepositoryProvider)
                                            .incrementItem(cartItem),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    error: (_, _) =>
                        const Center(child: Text('Failed to load cart items')),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                ),

                // 2. Bottom Checkout Summary Panel
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 24,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surface,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 15,
                        offset: const Offset(0, -4),
                      ),
                    ],
                  ),
                  child: SafeArea(
                    top: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Amount",
                              style: context.textTheme.titleLarge,
                            ),
                            Text(
                              "₹$totalAmount",
                              style: context.textTheme.titleLarge,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              side: BorderSide(
                                color: context.colorScheme.primary,
                              ),
                              elevation: 0,
                            ),
                            onPressed: () {
                              // TODO: Proceed to Checkout logic
                            },
                            child: Text(
                              "Proceed to Checkout",
                              style: context.textTheme.titleLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
