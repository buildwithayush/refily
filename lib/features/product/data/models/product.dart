import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,

    @JsonKey(name: 'category_id') required int categoryId,

    required String name,
    required String brand,
    required String subcategory,
    required double price,

    @JsonKey(name: 'original_price') required double originalPrice,
    required double rating,
    @JsonKey(name: 'review_count') required int reviewCount,
    required String description,
    required List<String> images,
    required int stock,
    required Map<String, String> specifications,
    required List<String> tags,

    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,

    @JsonKey(name: 'is_deleted') @Default(false)
    bool isDeleted,
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
