// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchWishlistProducts)
final fetchWishlistProductsProvider = FetchWishlistProductsProvider._();

final class FetchWishlistProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  FetchWishlistProductsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchWishlistProductsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchWishlistProductsHash();

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    return fetchWishlistProducts(ref);
  }
}

String _$fetchWishlistProductsHash() =>
    r'45002a45c2b845f7f772a76b4a2eb68e6a618c5c';
