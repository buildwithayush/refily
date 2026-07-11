import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/features/wishlist/presentation/screens/widgets/empty_wishlist.dart';
import 'package:refily/features/wishlist/presentation/screens/widgets/wishlist_item.dart';
import '../controllers/wishlist_controller.dart';

class WishlistScreen extends ConsumerWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlistAsync = ref.watch(wishlistControllerProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        scrolledUnderElevation: 0,
        title: Text(
          'My Wishlist',
          style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: wishlistAsync.when(
        data: (wishlistSet) {
          if (wishlistSet.isEmpty) {
            return const EmptyWishlist();
          }

          final itemList = wishlistSet.toList();

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              childAspectRatio: 0.8,
            ),
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              final product = itemList[index];
              return WishlistItem(
                product: product,
                onTap: () {
                  context.push(AppRoutes.productDetails, extra: product.id);
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) =>
            Center(child: Text('Error rendering wishlist data: $error')),
      ),
    );
  }
}
