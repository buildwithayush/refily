import 'package:refily/features/cart/domain/models/cart_item.dart';
import 'package:refily/features/product/data/models/product.dart';

extension ProductToCartItemX on Product {
  CartItem toCartItem({int quantity = 1}) {
    return CartItem(
      id: id,
      productId: id,
      name: name,
      brand: brand, 
      price: price,
      image: images.first,
      rating: rating,
      quantity: quantity,
    );
  }
}
