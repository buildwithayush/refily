import 'package:flutter/material.dart';
import 'package:refily/core/theme/theme_extension.dart';
import 'package:refily/features/home/models/product.dart';

class ProductInfoSection extends StatelessWidget {
  final Product product;
  const ProductInfoSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // Stock dynamic styling setup
    Color stockColor = Colors.green;
    if (product.stock <= 0) stockColor = Colors.red;
    if (product.stock < 5 && product.stock > 0) stockColor = Colors.orange;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Brand Name
        Text(
          product.brand.toUpperCase(),
          style: context.textTheme.labelMedium?.copyWith(
            color: Colors.grey,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        
        // Product Name
        Text(
          product.name,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4), 

        // - SUBCATEGORY TAG -
        Text(
          product.subcategory, 
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.primary.withValues(alpha: 0.8),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        
        // Rating & Reviews Row
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green[700],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  Text(
                    '${product.rating}',
                    style: context.textTheme.labelMedium,
                  ),
                  const SizedBox(width: 2),
                  Icon(
                    Icons.star,
                    color: context.colorScheme.primary,
                    size: 12,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '(${product.reviewCount} Reviews)',
              style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 16),
        
        // Price & Discount Block
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              '₹${product.price}',
              style: context.textTheme.displayMedium?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: context.colorScheme.primary,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '₹${product.originalPrice}',
              style: context.textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '${product.discountPercentage}% OFF',
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        
        // Dynamic Stock Tag
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: stockColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            product.stockStatus,
            style: TextStyle(
              color: stockColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}