import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/features/categories/presentation/controllers/category_controller.dart';
import 'package:refily/features/categories/presentation/widgets/categories_grid_skeleton.dart';
import 'package:refily/features/categories/presentation/widgets/category_card.dart';
import 'package:refily/features/shared/widgets/refily_appbar.dart';

class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoryControllerProvider);

    return Scaffold(
      appBar: const RefilyAppBar(appBarName: 'Categories'),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: categoriesAsync.when(
          loading: () => const CategoriesGridSkeleton(),
          error: (e, _) => Center(child: Text('Error: $e')),
          data: (categories) => GridView.builder(
            itemCount: categories.length,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.1,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              final category = categories[index];

              return InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  context.push(
                    AppRoutes.categoryProduct,
                    extra: {
                      'categoryId': category.id,
                      'categoryName': category.name,
                    },
                  );
                },
                child: CategoryCard(category: category),
              );
            },
          ),
        ),
      ),
    );
  }
}
