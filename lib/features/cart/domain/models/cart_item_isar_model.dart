import 'package:isar_plus/isar_plus.dart';
import 'package:refily/features/cart/domain/models/cart_item.dart';

part 'cart_item_isar_model.g.dart';

@collection
class CartItemIsarModel {
  int id = 0;

  //  ProductId Index for unique constraints & fast lookups
  @Index(unique: true)
  final int productId;

  final String name;
  final String brand;
  final double price;
  final String image;
  final double rating;
  final int quantity;

  CartItemIsarModel({
    required this.productId,
    required this.name,
    required this.brand,
    required this.price,
    required this.image,
    required this.rating,
    required this.quantity,
    required,
  });

  factory CartItemIsarModel.fromDomain(CartItem domain) {
    return CartItemIsarModel(
      productId: domain.productId,
      name: domain.name,
      brand: domain.brand,
      price: domain.price,
      image: domain.image,
      rating: domain.rating,
      quantity: domain.quantity,
    );
  }

  CartItem toDomain() {
    return CartItem(
      productId: productId,
      name: name,
      brand: brand,
      price: price,
      image: image,
      rating: rating,
    );
  }
}
