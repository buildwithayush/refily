import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/core/theme/theme_extension.dart';
import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/product/presentation/providers/product_detail_provider.dart';

class RelatedProductsList extends ConsumerWidget {
  final String category;
  final int currentProductId;

  const RelatedProductsList({
    super.key,
    required this.category,
    required this.currentProductId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Smart fallback recommendation provider
    final relatedProductsAsync = ref.watch(
      relatedProductsProvider(
        category: category,
        currentProductId: currentProductId,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You May Also Like",
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 220,
          child: relatedProductsAsync.when(
            data: (products) {
              if (products.isEmpty) {
                return const Text("No recommendations found");
              }

              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return GestureDetector(
                    onTap: () {
                      context.push(AppRoutes.productDetails, extra: product.id);
                    },
                    child: Container(
                      width: 150,
                      margin: const EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                        color: context.theme.cardTheme.color,
                       
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 1. Product Image
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              product.images.first,
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                          // 2. Info Content
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.brand,
                                  style: context.textTheme.labelMedium
                                      ?.copyWith(color: Colors.grey),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  product.name,
                                  style: context.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      "₹${product.price}",
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: context.colorScheme.primary,
                                          ),
                                    ),
                                    const SizedBox(width: 4),
                                    if (product.discountPercentage > 0)
                                      Text(
                                        "${product.discountPercentage}% OFF",
                                        style: const TextStyle(
                                          color: Colors.green,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
