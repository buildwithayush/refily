import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:refily/features/categories/presentation/controllers/category_controller.dart';

class CategoriesScreen extends ConsumerStatefulWidget {
  const CategoriesScreen({super.key});

  @override
  ConsumerState<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends ConsumerState<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    final categoryAsync = ref.watch(categoryControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Categories Screen')),
      body: categoryAsync.when(
        data: (category) {
          return GestureDetector(
            onTap: (){
              
            },
            child: GridView.builder(
              itemCount: category.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final categories = category[index];
                return Image.asset(
                  height: 200,
                  width: 200,
                  fit: BoxFit.contain, categories.image);
              },
            ),
          );
        },
        error: (error, stackTrace) => Center(child: Text('Error $error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
