import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required int categoryId,
    required String name,
    required String brand,
    required String category,
    required String subcategory,
    required double price,
    required double originalPrice,
    required double rating,
    required int reviewCount,
    required String description,
    required List<String> images,
    required int stock,
    required Map<String, String> specifications,
    required List<String> tags,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

extension ProductX on Product {
  String get stockStatus {
    if (stock <= 0) return "Out of Stock";
    if (stock < 5) return "Only $stock left!";
    return "In Stock";
  }

  int get discountPercentage {
    if (originalPrice == 0) return 0;
    return (((originalPrice - price) / originalPrice) * 100).round();
  }
}
