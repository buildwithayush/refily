import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/core/theme/theme_extension.dart';
import 'package:refily/core/widgets/network/cached_product_image.dart';
import 'package:refily/features/categories/domain/extension/catgeory_extension.dart';
import 'package:refily/features/categories/presentation/widgets/product_grid_skeleton.dart';
import 'package:refily/features/categories/providers/categories_provider.dart';
import 'package:refily/features/home/controllers/category_products_provider.dart';

class CategoryProductsScreen extends ConsumerWidget {
  final int categoryId;

  const CategoryProductsScreen({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(fetchCategoryProductProvider(categoryId));
    final categoriesAsync = ref.watch(categoriesProvider);
    final String categoryTitle = categoriesAsync.when(
      data: (categoriesList) => categoriesList.findCategoryName(
        targetId: categoryId,
        fallbackProducts: productsAsync.value,
      ),
      loading: () => 'Loading...',
      error: (_, _) => 'Products',
    );
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: productsAsync.when(
        data: (displayList) {
          if (displayList.isEmpty) {
            return const Center(child: Text('No products available.'));
          }

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
            itemCount: displayList.length,
            itemBuilder: (context, index) {
              final product = displayList[index];

              return GestureDetector(
                onTap: () {
                  context.push(AppRoutes.productDetails, extra: product.id);
                },
                child: Stack(
                  children: [
                    Card(
                      elevation: 1,
                      color: context.colorScheme.surfaceContainerLow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                              child: AppCachedImage(
                                imageUrl: product.images.first,
                                fit: BoxFit.cover,
                                width: double.infinity,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: context.colorScheme.onSurface,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                            ),
                            child: Text(
                              '₹${product.price}',
                              style: TextStyle(
                                color: context.colorScheme.primary,
                              ),
                            ),
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
        loading: () => const ProductsGridSkeleton(),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
