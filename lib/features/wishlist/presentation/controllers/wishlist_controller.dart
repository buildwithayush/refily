import 'package:refily/features/wishlist/data/providers/wishlist_providers.dart';
import 'package:refily/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wishlist_controller.g.dart';

@riverpod
class WishlistController extends _$WishlistController {
  @override
  Future<Set<WishlistItem>> build() async {
    final repository = ref.watch(wishlistRepositoryProvider);
    return await repository.getWishlist();
  }

  Future<void> toggleWishList(int productId) async {
    final repository = ref.watch(wishlistRepositoryProvider);
    final isPresent = await repository.isWishlisted(productId);

    if (isPresent) {
      await repository.removeFromWishlist(productId);
    } else {
      await repository.addToWishlist(productId);
    }
    final updatedSet = await repository.getWishlist();
    state = AsyncData(updatedSet);
  }

  bool isWishlisted(int productId) {
    final items = state.value ?? {};
    return items.any((item) => item.productId == productId);
  }
}

@riverpod
int wishlistCount(Ref ref) {
  final wishlistAsync = ref.watch(wishlistControllerProvider);

  return wishlistAsync.value?.length ?? 0;
}
