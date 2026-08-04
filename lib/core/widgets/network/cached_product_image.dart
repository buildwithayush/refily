import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:refily/core/theme/theme_extension.dart';

class AppCachedImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final int? memCacheWidth;
  final int? memCacheHeight;
  const AppCachedImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    required this.fit,
    this.borderRadius,
    this.memCacheWidth,
    this.memCacheHeight,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl.trim().isEmpty) {
      return _buildErrorPlaceholder(context);
    }

    Widget imageWidget = CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      memCacheWidth: memCacheWidth,
      memCacheHeight: memCacheHeight,
      // Smooth Loading Placeholder
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        color: Colors.grey[200],
        child: const Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      // Network / Broken Link Fallback
      errorWidget: (context, url, error) => _buildErrorPlaceholder(context),
    );
    if (borderRadius != null) {
      return ClipRRect(borderRadius: borderRadius!, child: imageWidget);
    }
    return imageWidget;
  }

  Widget _buildErrorPlaceholder(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: borderRadius,
      ),
      child: Icon(
        Icons.image_not_supported_outlined,
        color: Colors.grey,
        size: (width != null && width! < 50) ? 18 : 28,
      ),
    );
  }
}
