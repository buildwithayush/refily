import 'dart:async';
import 'package:flutter/material.dart';
import 'package:refily/features/home/banner/domain/model/banner_model.dart';

class HomeBannerSlider extends StatefulWidget {
  final List<BannerModel> banners;
  final Function(int categoryId) onBannerTap;

  const HomeBannerSlider({
    super.key,
    required this.banners,
    required this.onBannerTap,
  });

  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
  late final PageController _pageController;
  Timer? _autoSlideTimer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _startAutoSliding();
  }

  void _startAutoSliding() {
    if (widget.banners.length <= 1) return;

    _autoSlideTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_pageController.hasClients) {
        final nextPage = (_currentPage + 1) % widget.banners.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOutCubic,
        );
      }
    });
  }

  @override
  void dispose() {
    _autoSlideTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.banners.isEmpty) return const SizedBox.shrink();

    // Active status filter aur sorting execution
    final activeBanners = widget.banners.where((b) => b.isActive).toList()
      ..sort((a, b) => a.displayOrder.compareTo(b.displayOrder));

    return Column(
      children: [
        SizedBox(
          height: 170,
          child: PageView.builder(
            controller: _pageController,
            itemCount: activeBanners.length,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemBuilder: (context, index) {
              final banner = activeBanners[index];

              return GestureDetector(
                onTap: () => widget.onBannerTap(banner.redirectId),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      banner.imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Theme.of(
                          context,
                        ).colorScheme.surfaceContainerHighest,
                        child: const Icon(
                          Icons.broken_image_outlined,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        // Navigation Indicator Dots
        if (activeBanners.length > 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              activeBanners.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 5,
                width: _currentPage == index ? 16 : 5,
                decoration: BoxDecoration(
                  color: _currentPage == index
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
