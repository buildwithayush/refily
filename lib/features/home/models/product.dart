class Product {
  final int id;
  final String name;
  final String brand;
  final String category;
  final double price;
  final double originalPrice;
  final double rating;
  final int reviewCount;
  final String description;
  final List<String> images; 
  final int stock;
  final Map<String, String> specifications; 
  final List<String> tags;

  const Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.category,
    required this.price,
    required this.originalPrice,
    required this.rating,
    required this.reviewCount,
    required this.description,
    required this.images,
    required this.stock,
    required this.specifications,
    required this.tags,
  });

  // Getter for Stock Status UI
  String get stockStatus {
    if (stock <= 0) return "Out of Stock";
    if (stock < 5) return "Only $stock left!";
    return "In Stock";
  }
  // Getter for discount
  int get discountPercentage {
  if (originalPrice == 0) return 0;
  return (((originalPrice - price) / originalPrice) * 100).round();
}
}