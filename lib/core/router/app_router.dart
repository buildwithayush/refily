import 'package:go_router/go_router.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/features/cart/presentation/screens/cart_screen.dart';
import 'package:refily/features/categories/presentation/screens/categories_screen.dart';
import 'package:refily/features/home/presentation/screens/home_screen.dart';
import 'package:refily/features/profile/presentation/screens/profile_screen.dart';
import 'package:refily/features/settings/presentation/screens/setting_screen.dart';
import 'package:refily/features/shared/presentation/screens/bottom_naviagtion_screen.dart';
import 'package:refily/features/wishlist/presentation/screens/wishlist_screen.dart';
// import 'package:refily/features/wishlist/presentation/screens/wishlist_screen.dart';

class AppRouter {
  static final GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.home,
    routes: <RouteBase>[
      ShellRoute(
        builder: (context, state, child) {
          return BottomNaviagtionScreen(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoutes.category,
            builder: (context, state) => const CategoriesScreen(),
          ),
          GoRoute(
            path: AppRoutes.cart,
            builder: (context, state) => const CartScreen(),
          ),
          GoRoute(
            path: AppRoutes.home,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: AppRoutes.wishlist,
            builder: (context, state) => const WishlistScreen(),
          ),
          GoRoute(
            path: AppRoutes.profile,
            builder: (context, state) => const ProfileScreen(),
          ),
          GoRoute(
            path: AppRoutes.settings,
            builder: (context, state) => const SettingScreen(),
          ),
        ],
      ),
    ],
  );
}
