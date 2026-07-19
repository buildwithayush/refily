
import 'package:freezed_annotation/freezed_annotation.dart';

enum BannerRedirectType {
  @JsonValue('category')
  category,
  
  @JsonValue('product')
  product,
  
  @JsonValue('external')
  external; // Code structuring format optimization
}