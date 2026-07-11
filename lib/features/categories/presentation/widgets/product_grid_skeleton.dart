import 'package:flutter/material.dart';

import 'package:refily/features/categories/presentation/widgets/app_shrimmer.dart';
import 'product_card_skeleton.dart';

class ProductsGridSkeleton extends StatelessWidget {
  final int itemCount;
  const ProductsGridSkeleton({super.key, this.itemCount = 8});

  @override
  Widget build(BuildContext context) {
    return AppShimmer(
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.75,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) => const ProductCardSkeleton(),
      ),
    );
  }
}
