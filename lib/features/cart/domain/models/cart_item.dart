import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';
@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required int id,
    required int productId,
    required String name,
    required String brand,
    required double price,
    required String image,
    required double rating,
    required int quantity,
  }) = _CartItem;
}