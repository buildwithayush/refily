import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:refily/core/router/app_routes.dart';

class BottomNaviagtionScreen extends StatelessWidget {
  final Widget child;
  const BottomNaviagtionScreen({super.key, required this.child});

  
  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith(AppRoutes.category)) return 1;
    if (location.startsWith(AppRoutes.cart)) return 2;
    if (location.startsWith(AppRoutes.profile)) return 3;
    return 0; // Default to Home
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final int currentIndex = _calculateSelectedIndex(context);

    return Scaffold(
      body: child,
     
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 20,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: NavigationBar(
          selectedIndex: currentIndex,
          elevation: 0,
          backgroundColor: theme.colorScheme.surface,
          indicatorColor: theme.colorScheme.primaryContainer.withValues(
            alpha: 0.5,
          ),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          height: 68,

          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            final bool isSelected = states.contains(WidgetState.selected);
            return GoogleFonts.plusJakartaSans(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              color: isSelected
                  ? theme.colorScheme.primary
                  : theme.colorScheme.onSurfaceVariant,
            );
          }),
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home, color: theme.colorScheme.primary),
              label: 'Home',
            ),
            NavigationDestination(
              icon: const Icon(Icons.category_outlined),
              selectedIcon: Icon(
                Icons.category,
                color: theme.colorScheme.primary,
              ),
              label: 'Categories',
            ),
            NavigationDestination(
              icon: const Icon(Icons.shopping_cart_outlined),
              selectedIcon: Icon(
                Icons.shopping_cart,
                color: theme.colorScheme.primary,
              ),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: const Icon(Icons.person_outline),
              selectedIcon: Icon(
                Icons.person,
                color: theme.colorScheme.primary,
              ),
              label: 'Profile',
            ),
          ],
          onDestinationSelected: (index) {
            if (index == currentIndex) return;

            switch (index) {
              case 0:
                context.go(AppRoutes.home);
                break;
              case 1:
                context.go(AppRoutes.category);
                break;
              case 2:
                context.go(AppRoutes.cart);
                break;
              case 3:
                context.go(AppRoutes.profile);
                break;
            }
          },
        ),
      ),
    );
  }
}
