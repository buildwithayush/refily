import 'package:flutter/material.dart';
import 'package:refily/features/categories/presentation/widgets/app_shrimmer.dart';
import 'package:refily/features/categories/presentation/widgets/category_card_skeleton.dart';

class CategoriesGridSkeleton extends StatelessWidget {
  const CategoriesGridSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShimmer(
      child: GridView.builder(
        itemCount: 10,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.1,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) => const CategoryCardSkeleton(),
      ),
    );
  }
}
