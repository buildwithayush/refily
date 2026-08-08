import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/core/theme/theme_extension.dart';
import 'package:refily/core/widgets/network/cached_product_image.dart';
import 'package:refily/features/cart/providers/cart_providers.dart';
import 'package:refily/features/categories/domain/extension/product_mappers_ext.dart';
import 'package:refily/features/home/banner/providers/banner_images_provider.dart';
import 'package:refily/features/home/banner/widgets/home_banner_slider.dart';
import 'package:refily/features/home/controllers/fetch_product_provider.dart';
import 'package:refily/features/home/presentation/widgets/banner_shimmer.dart';
import 'package:refily/features/home/presentation/widgets/chips_shimmer.dart';
import 'package:refily/features/home/presentation/widgets/products_shimmer.dart';
import 'package:refily/features/shared/widgets/refily_appbar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  String selectedCategory = "All";

  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final filteredProductAsync = ref.watch(filteredProductsProvider);
    final categoriesAsync = ref.watch(productCategoriesProvider);
    final currentCategory = ref.watch(selectedCategoryProvider);
    final bannersAsync = ref.watch(bannerProvider);
    return Scaffold(
      appBar: const RefilyAppBar(appBarName: 'Refily'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                loading: () => const ChipsShimmer(),
              ),
            ),
            RefreshIndicator(
              onRefresh: () => ref.refresh(bannerProvider.future),
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 8),
                  bannersAsync.when(
                    data: (bannersList) => HomeBannerSlider(
                      banners: bannersList,
                      onBannerTap: (targetId) {
                        context.push(
                          AppRoutes.categoryProduct,
                          extra: targetId,
                        );
                      },
                    ),
                    loading: () => const BannerShimmer(),
                    error: (error, stackTrace) => const SizedBox.shrink(),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 16.0,
                top: 12.0,
                bottom: 4.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Products For You",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.onSurface,
                      letterSpacing: -0.5,
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
            filteredProductAsync.when(
              data: (products) {
                if (products.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32.0),
                    child: Center(child: Text('No products found.')),
                  );
                }
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    childAspectRatio: 0.78,
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.03),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  context.push(
                                    AppRoutes.productDetails,
                                    extra: product.id,
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  color: theme
                                      .colorScheme
                                      .surfaceContainerHighest
                                      .withValues(alpha: 0.3),
                                  child: AppCachedImage(
                                    imageUrl: product.images.first,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: theme.colorScheme.onSurface,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '₹${product.price}',
                                        style: context.textTheme.titleMedium,
                                      ),
                                      //* Add to Cart Button
                                      Material(
                                        color: theme.colorScheme.primary
                                            .withValues(alpha: 0.1),
                                        borderRadius: BorderRadius.circular(8),
                                        child: InkWell(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          onTap: () {
                                            ref
                                                .read(cartRepositoryProvider)
                                                .incrementItem(
                                                  product.toCartItem(),
                                                );

                                            //* SnackBar
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "${product.name} added to cart!",
                                                ),
                                                duration: const Duration(
                                                  seconds: 1,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.add_shopping_cart_rounded,
                                              size: 18,
                                              color: theme.colorScheme.primary,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
              loading: () => SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: const ProductsShimmer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
