
import 'package:isar_plus/isar_plus.dart';
import 'package:refily/features/product/data/models/product.dart';

part 'product_isar_model.g.dart';

@collection
class ProductIsarModel {
  int id = 0;

  @Index(unique: true,)
  final int remoteId;

  final int categoryId;
  final String name;
  final String brand;
  final String subcategory;
  final double price;
  final double originalPrice;
  final double rating;
  final int reviewCount;
  final String description;
  
  final List<String> images;
  final int stock;
  
  final List<String> specificationsKeys;
  final List<String> specificationsValues;
  final List<String> tags;

  final DateTime updatedAt;
  final bool isDeleted;

  ProductIsarModel({
    required this.remoteId,
    required this.categoryId,
    required this.name,
    required this.brand,
    required this.subcategory,
    required this.price,
    required this.originalPrice,
    required this.rating,
    required this.reviewCount,
    required this.description,
    required this.images,
    required this.stock,
    required this.specificationsKeys,
    required this.specificationsValues,
    required this.tags,
    required this.updatedAt,
    required this.isDeleted,
  });

  /// Isar Model -> Pure Domain Entity
  Product toDomain() {
    
    final Map<String, String> specsMap = {};
    for (int i = 0; i < specificationsKeys.length; i++) {
      if (i < specificationsValues.length) {
        specsMap[specificationsKeys[i]] = specificationsValues[i];
      }
    }

    return Product(
      id: remoteId,
      categoryId: categoryId,
      name: name,
      brand: brand,
      subcategory: subcategory,
      price: price,
      originalPrice: originalPrice,
      rating: rating,
      reviewCount: reviewCount,
      description: description,
      images: images,
      stock: stock,
      specifications: specsMap,
      tags: tags,
      updatedAt: updatedAt,
      isDeleted: isDeleted,
    );
  }

  /// Pure Domain Entity -> Isar Model
  factory ProductIsarModel.fromDomain(Product product) {
    return ProductIsarModel(
      remoteId: product.id,
      categoryId: product.categoryId,
      name: product.name,
      brand: product.brand,
      subcategory: product.subcategory,
      price: product.price,
      originalPrice: product.originalPrice,
      rating: product.rating,
      reviewCount: product.reviewCount,
      description: product.description,
      images: product.images,
      stock: product.stock,
      specificationsKeys: product.specifications.keys.toList(),
      specificationsValues: product.specifications.values.toList(),
      tags: product.tags,
      updatedAt: product.updatedAt,
      isDeleted: product.isDeleted,
    );
  }
}