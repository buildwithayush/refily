import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class AppShimmer extends StatelessWidget {
  final Widget child;
  const AppShimmer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Shimmer.fromColors(
      baseColor: colorScheme.surfaceContainerHighest,
      highlightColor: colorScheme.surface,
      period: const Duration(milliseconds: 1200),
      child: child,
    );
  }
}