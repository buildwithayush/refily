import 'package:flutter/material.dart';
import 'package:refily/features/categories/presentation/widgets/shrimmer_box.dart';

class CategoryCardSkeleton extends StatelessWidget {
  const CategoryCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: ShimmerBox(width: double.infinity, height: 80)),
            SizedBox(height: 14),
            ShimmerBox(width: 80, height: 16),
          ],
        ),
      ),
    );
  }
}
