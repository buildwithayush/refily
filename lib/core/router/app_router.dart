import 'package:go_router/go_router.dart';
import 'package:refily/core/router/app_routes.dart';
import 'package:refily/features/products/presentation/screens/cart_screen.dart';
import 'package:refily/features/products/presentation/screens/home_screen.dart';
import 'package:refily/features/products/presentation/screens/product_screen.dart';

class AppRouter {
  static final GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.product,
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.product,
        builder: (context, state) => const ProductScreen(),
      ),
      GoRoute(
        path: AppRoutes.cart,
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
