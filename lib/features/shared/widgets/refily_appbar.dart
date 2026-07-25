import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:refily/core/router/app_routes.dart';

import 'package:refily/features/wishlist/presentation/controllers/wishlist_controller.dart';

class RefilyAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final String appBarName;
  const RefilyAppBar({super.key, required this.appBarName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    final wishlistCount = ref.watch(wishlistCountProvider);

    return AppBar(
      title: Text(
        appBarName,
        style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
      ),
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: colorScheme.surface,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            onPressed: () {
              context.push(AppRoutes.wishlist);
            },
            icon: Badge(
              label: Text('$wishlistCount'),
              isLabelVisible: wishlistCount > 0,
              backgroundColor: colorScheme.primary,
              textColor: colorScheme.onPrimary,
              child: Icon(
                wishlistCount > 0
                    ? Icons.favorite_rounded
                    : Icons.favorite_border_rounded,
                color: wishlistCount > 0
                    ? colorScheme.primary
                    : colorScheme.onSurface,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Preferred size implementation required for standard AppBar casting
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
