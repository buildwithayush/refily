import 'package:go_router/go_router.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/features/auth/presentation/providers/auth_controller.dart';
import 'package:refily/features/auth/presentation/screens/login_screen.dart';
import 'package:refily/features/auth/presentation/screens/signUp_screen.dart';
import 'package:refily/features/cart/presentation/screens/cart_screen.dart';
import 'package:refily/features/categories/presentation/screens/categories_product_screen.dart';
import 'package:refily/features/categories/presentation/screens/categories_screen.dart';
import 'package:refily/features/home/presentation/screens/home_screen.dart';
import 'package:refily/features/product/presentation/screens/product_detail_screen.dart';
import 'package:refily/features/profile/presentation/screens/profile_screen.dart';
import 'package:refily/features/settings/presentation/screens/setting_screen.dart';
import 'package:refily/features/shared/presentation/screens/bottom_naviagtion_screen.dart';
import 'package:refily/features/wishlist/presentation/screens/wishlist_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter routerProvider(Ref ref) {
  final authStateAsync = ref.watch(authStateProviderProvider);

  return GoRouter(
    initialLocation: AppRoutes.home,

  
    redirect: (context, state) {
      
      if (authStateAsync.isLoading) return null;

      final authState = authStateAsync.value;
      final isAuthenticated = authState?.session != null;
      final isGoingToAuthScreen =
          state.matchedLocation == AppRoutes.login ||
          state.matchedLocation == AppRoutes.signup;

     
      if (!isAuthenticated && !isGoingToAuthScreen) {
        return AppRoutes.login;
      }

      
      if (isAuthenticated && isGoingToAuthScreen) {
        return AppRoutes.home;
      }

      return null;
    },

    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.signup,
        builder: (context, state) => const SignupScreen(),
      ),
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
            path: AppRoutes.categoryProduct,
            builder: (context, state) {
              final categoryId = state.extra as int;
              return CategoryProductsScreen(categoryId: categoryId);
            },
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
          GoRoute(
            path: AppRoutes.productDetails,
            builder: (context, state) =>
                ProductDetailScreen(productId: state.extra as int),
          ),
        ],
      ),
    ],
  );
}
