import 'package:flutter/material.dart';

import 'package:refily/features/categories/presentation/widgets/shrimmer_box.dart';

class ProductCardSkeleton extends StatelessWidget {
  const ProductCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image placeholder
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: ShimmerBox(
                width: double.infinity,
                height: double.infinity,
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
          // title placeholder
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 6),
            child: ShimmerBox(width: double.infinity, height: 12),
          ),
          // price placeholder
          Padding(
            padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: ShimmerBox(width: 50, height: 12),
          ),
        ],
      ),
    );
  }
}
