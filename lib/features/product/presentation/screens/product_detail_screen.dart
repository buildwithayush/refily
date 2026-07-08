import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refily/features/product/presentation/providers/product_detail_provider.dart';
import 'package:refily/features/product/presentation/widgets/detail_quantity_selector.dart';
import 'package:refily/features/product/presentation/widgets/product_hero_section.dart';
import 'package:refily/features/product/presentation/widgets/product_info_section.dart';
import 'package:refily/features/product/presentation/widgets/related_products_list.dart';
import 'package:refily/features/product/presentation/widgets/specifications_table.dart';
import 'package:refily/features/product/presentation/widgets/expandable_description.dart';

class ProductDetailScreen extends ConsumerWidget {
  final int productId;

  const ProductDetailScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productAsync = ref.watch(productDetailProvider(productId));

    return Scaffold(
      body: productAsync.when(
        data: (product) {
          return Stack(
            children: [
              CustomScrollView(
                slivers: [
                  // Image Carousel + Back + Fav Actions
                  ProductHeroSection(product: product),

                  // Main content container
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Info Block (Name, Price, Brand, Stock)
                          ProductInfoSection(product: product),
                          const Divider(height: 32),

                          // Expandable Description
                          ExpandableDescription(
                            description: product.description,
                          ),
                          const Divider(height: 32),

                          // Specifications Table
                          SpecificationsTable(specs: product.specifications),
                          const Divider(height: 32),

                          //    Delivery Details
                          //    const DeliverySection(),

                          // Related Products (With fallback recommendation)
                          RelatedProductsList(
                            category: product.category,
                            currentProductId: product.id,
                          ),

                          // Reviews Section
                          //  ReviewsSection(product: product),
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // Fixed Bottom Sticky Action Bar (Cart + Buy Now Sync)
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: DetailQuantitySelector(product: product),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text("Error: $err")),
      ),
    );
  }
}
