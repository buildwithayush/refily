import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/core/theme/theme_extension.dart';
import 'package:refily/features/wishlist/presentation/controllers/wishlist_products_provider.dart';
import 'package:refily/features/wishlist/presentation/screens/widgets/empty_wishlist.dart';
import 'package:refily/features/wishlist/presentation/screens/widgets/wishlist_item.dart';

class WishlistScreen extends ConsumerWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlistAsync = ref.watch(fetchWishlistProductsProvider);

    return Scaffold(
      backgroundColor:context.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: context.colorScheme.surface,
        scrolledUnderElevation: 0,
        title: Text(
          'My Wishlist',
          style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
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
              return WishlistItemCard(
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
