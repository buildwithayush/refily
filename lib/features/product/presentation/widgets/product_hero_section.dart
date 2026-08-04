import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:refily/core/theme/theme_extension.dart';
import 'package:refily/core/widgets/network/cached_product_image.dart';
import 'package:refily/features/product/presentation/providers/product_detail_provider.dart';
import 'package:refily/features/wishlist/presentation/controllers/wishlist_controller.dart';

class ProductHeroSection extends ConsumerStatefulWidget {
  final int productId;
  const ProductHeroSection({super.key, required this.productId});

  @override
  ConsumerState<ProductHeroSection> createState() => _ProductHeroSectionState();
}

class _ProductHeroSectionState extends ConsumerState<ProductHeroSection> {
  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final productAsync = ref.watch(productDetailProvider(widget.productId));
    final wishlistAsync = ref.watch(wishlistControllerProvider);

    final wishlistSet = wishlistAsync.value ?? {};

    return productAsync.when(
      data: (product) {
        final isFavorite = wishlistSet.any((p) => p.productId == product.id);

        return SliverAppBar(
          leadingWidth: 60,
          expandedHeight: 340,
          pinned: true,
          backgroundColor: context.theme.scaffoldBackgroundColor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CircleAvatar(
              backgroundColor: context.colorScheme.surfaceContainerHighest
                  .withValues(alpha: 0.8),
              foregroundColor: context.colorScheme.primary,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => context.pop(),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundColor: context.colorScheme.surfaceContainerHighest
                    .withValues(alpha: 0.8),
                child: IconButton(
                  icon: Icon(
                    isFavorite
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_rounded,
                    color: isFavorite
                        ? Colors.redAccent
                        : context.colorScheme.primary,
                  ),
                  onPressed: () {
                    final wishlistNotifier = ref.read(
                      wishlistControllerProvider.notifier,
                    );
                    wishlistNotifier.toggleWishList(widget.productId);
                  },
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: context.colorScheme.surfaceContainerHighest
                  .withValues(alpha: 0.8),
              foregroundColor: context.colorScheme.primary,
              child: IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  // Share functionality link bindings
                },
              ),
            ),
            const SizedBox(width: 16),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                // Image Carousel Layer
                PageView.builder(
                  itemCount: product.images.length,
                  onPageChanged: (index) =>
                      setState(() => _currentImageIndex = index),
                  itemBuilder: (context, index) {
                    return AppCachedImage(
                      imageUrl: product.images.first,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    );
                  },
                ),
                // Dynamic Indicator Dots
                if (product.images.length > 1)
                  Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        product.images.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          height: 6,
                          width: _currentImageIndex == index ? 16 : 6,
                          decoration: BoxDecoration(
                            color: _currentImageIndex == index
                                ? context.colorScheme.primary
                                : Colors.grey.withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
      // 3. Clean transition skeleton handlers for network data loading states
      loading: () => const SliverAppBar(
        expandedHeight: 340,
        flexibleSpace: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => SliverAppBar(
        expandedHeight: 340,
        flexibleSpace: Center(
          child: Text('Failed to load item metadata: $error'),
        ),
      ),
    );
  }
}
