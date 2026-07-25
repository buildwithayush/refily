import 'package:isar_plus/isar_plus.dart';
import 'package:refily/features/wishlist/domain/entities/wishlist_item.dart';

part 'wishlist_isar_model.g.dart';

@collection
class WishlistIsarModel {
  int id = 0;

  @Index(unique: true)
  final int productId;

  final DateTime addedAt;

  WishlistIsarModel({
    this.id = 0,
    required this.productId,
    required this.addedAt,
  });

  WishlistItem toDomain() {
    return WishlistItem(id: id, productId: productId, addedAt: addedAt);
  }

  factory WishlistIsarModel.fromDomain(WishlistItem item) {
    return WishlistIsarModel(
      id: item.id,
      productId: item.productId,
      addedAt: item.addedAt,
    );
  }
}
