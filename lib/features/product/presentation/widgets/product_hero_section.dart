import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:refily/core/theme/theme_extension.dart';
import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/presentation/providers/product_detail_provider.dart';

class ProductHeroSection extends ConsumerStatefulWidget {
  final Product product;
  const ProductHeroSection({super.key, required this.product});

  @override
  ConsumerState<ProductHeroSection> createState() => _ProductHeroSectionState();
}

class _ProductHeroSectionState extends ConsumerState<ProductHeroSection> {
  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final wishlist = ref.watch(wishListProvider);
    final isFavorite = wishlist.contains(widget.product.id);

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
        CircleAvatar(
          backgroundColor: context.colorScheme.surfaceContainerHighest
              .withValues(alpha: 0.8),
          child: IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : context.colorScheme.primary,
            ),
            onPressed: () {
              ref
                  .read(wishListProvider.notifier)
                  .toggleFavorite(widget.product.id);
            },
          ),
        ),
        const SizedBox(width: 8),
        CircleAvatar(
          backgroundColor: context.colorScheme.surfaceContainerHighest
              .withValues(alpha: 0.8),
          foregroundColor: context.colorScheme.primary,
          child: IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              // Share functionality
            },
          ),
        ),
        const SizedBox(width: 16),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            // Image Carousel Support
            PageView.builder(
              itemCount: widget.product.images.length,
              onPageChanged: (index) =>
                  setState(() => _currentImageIndex = index),
              itemBuilder: (context, index) {
                return Image.asset(
                  widget.product.images[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              },
            ),
            // Tiny Indicator Dots for Carousel
            if (widget.product.images.length > 1)
              Positioned(
                bottom: 16,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    widget.product.images.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      height: 6,
                      width: _currentImageIndex == index ? 16 : 6,
                      decoration: BoxDecoration(
                        color: _currentImageIndex == index
                            ? context.colorScheme.primary
                            : Colors.grey,
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
  }
}
