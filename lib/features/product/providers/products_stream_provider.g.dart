// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_stream_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productsStream)
final productsStreamProvider = ProductsStreamProvider._();

final class ProductsStreamProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          Stream<List<Product>>
        >
    with $FutureModifier<List<Product>>, $StreamProvider<List<Product>> {
  ProductsStreamProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsStreamProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Product>> create(Ref ref) {
    return productsStream(ref);
  }
}

String _$productsStreamHash() => r'b151e973f09f70686d0801b1d5cdabdee8109f84';
