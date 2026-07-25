import 'package:flutter/material.dart';
import 'package:refily/features/categories/presentation/widgets/app_shrimmer.dart';
import 'package:refily/features/categories/presentation/widgets/shrimmer_box.dart';


class ProductsShimmer extends StatelessWidget {
  const ProductsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShimmer(
      child: GridView.builder(
        itemCount: 8,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.1,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            color: Theme.of(context).colorScheme.surfaceContainerLow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: ShimmerBox(
                      width: 24,
                      height: 24,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                  ),
                  SizedBox(height: 8),
                  ShimmerBox(width: double.infinity, height: 65),
                  SizedBox(height: 12),
                  ShimmerBox(
                    width: 100,
                    height: 14,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
