// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchProduct)
final fetchProductProvider = FetchProductProvider._();

final class FetchProductProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  FetchProductProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchProductProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchProductHash();

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    return fetchProduct(ref);
  }
}

String _$fetchProductHash() => r'3b81d232831b8d769b25c52b73e53d669cf59db3';
