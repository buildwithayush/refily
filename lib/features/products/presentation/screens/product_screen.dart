import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/features/products/controllers/fetch_product_provider.dart';
import 'package:refily/features/products/presentation/widgets/shimmer_chips_button.dart';
import 'package:refily/features/products/presentation/widgets/shimmer_product_screen.dart';

class ProductScreen extends ConsumerStatefulWidget {
  const ProductScreen({super.key});

  @override
  ConsumerState<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends ConsumerState<ProductScreen> {
  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    final filteredProductAsync = ref.watch(filteredCategoryProvider);
    final categoriesAsync = ref.watch(productCategoriesProvider);
    final currentCategory = ref.watch(selectedCategoryProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopping Screen",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          // 1. Search Bar Section
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: TextField(
              style: GoogleFonts.poppins(),
              decoration: InputDecoration(
                hintText: "Search products...",
                hintStyle: GoogleFonts.poppins(color: Colors.grey),
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
              onChanged: (value) {
                ref.read(searchQueryProvider.notifier).updateQuery(value);
              },
            ),
          ),

          // 2. Horizontal Categories Chips Section
          SizedBox(
            height: 50,
            child: categoriesAsync.when(
              data: (categoriesList) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 8.0,
                    bottom: 8.0,
                  ),
                  itemBuilder: (context, index) {
                    final category = categoriesList[index];
                    final isSelected = currentCategory == category;

                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ChoiceChip(
                        label: Text(category),
                        labelStyle: GoogleFonts.poppins(
                          color: isSelected ? Colors.white : Colors.black,
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                        selected: isSelected,
                        selectedColor: Colors.blueGrey[800],
                        backgroundColor: Colors.grey[200],
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onSelected: (_) {
                          ref
                              .read(selectedCategoryProvider.notifier)
                              .selected(category);
                        },
                      ),
                    );
                  },
                );
              },
              error: (error, stackTrace) => const SizedBox.shrink(),
              loading: () => chipsShimmer(),
            ),
          ),

          // 3. Products Grid Section
          Expanded(
            child: filteredProductAsync.when(
              data: (products) {
                if (products.isEmpty) {
                  return const Center(child: Text('No products found.'));
                }
                return GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Card(
                      color: Colors.blueGrey,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 4,
                                    top: 4,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_shopping_cart,
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              product.image,
                              height: 65,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(
                                product.name,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              error: (error, trace) => Center(child: Text('Error: $error')),
              loading: () => buildShimmerLoading(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(
              onPressed: () {
               context.push(AppRoutes.cart);
              },
              icon: const Icon(Icons.shopping_cart),
            ),
          ],
        ),
      ),
    );
  }
}
