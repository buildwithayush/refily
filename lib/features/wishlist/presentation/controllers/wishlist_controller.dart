import 'package:refily/features/product/data/models/product.dart';
import 'package:refily/features/wishlist/data/repositories/wishlist_repository_impl.dart';
import 'package:refily/features/wishlist/domain/repositories/wishlist_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wishlist_controller.g.dart';

@Riverpod(keepAlive: true)
WishlistRepository wishlistRepository(Ref ref) {
  return WishlistRepositoryImpl();
}

@riverpod
class WishlistController extends _$WishlistController {
  late final WishlistRepository _repository;

  @override
  Future<Set<Product>> build() async {
    _repository = ref.watch(wishlistRepositoryProvider);
    return await _repository.getWishlist();
  }

  Future<void> addItem(Product product) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _repository.addToWishlist(product);
      return await _repository.getWishlist();
    });
  }

  Future<void> removeItem(int productId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _repository.removeFromWishlist(productId);
      return await _repository.getWishlist();
    });
  }
}

@Riverpod(keepAlive: true)
Future<bool> checkWishlistStatus(Ref ref, int productId) async {
  final repository = ref.watch(wishlistRepositoryProvider);

  ref.watch(wishlistControllerProvider);
  return await repository.isWishlisted(productId);
}

@riverpod
int wishlistCount(Ref ref) {
  final wishlistAsync = ref.watch(wishlistControllerProvider);

  return wishlistAsync.maybeWhen(
    data: (wishlistSet) => wishlistSet.length,
    orElse: () => 0,
  );
}
