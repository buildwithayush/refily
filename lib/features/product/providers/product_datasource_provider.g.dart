// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_datasource_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productSupabaseDatasource)
final productSupabaseDatasourceProvider = ProductSupabaseDatasourceProvider._();

final class ProductSupabaseDatasourceProvider
    extends
        $FunctionalProvider<
          ProductSupabaseDatasource,
          ProductSupabaseDatasource,
          ProductSupabaseDatasource
        >
    with $Provider<ProductSupabaseDatasource> {
  ProductSupabaseDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productSupabaseDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productSupabaseDatasourceHash();

  @$internal
  @override
  $ProviderElement<ProductSupabaseDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductSupabaseDatasource create(Ref ref) {
    return productSupabaseDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductSupabaseDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductSupabaseDatasource>(value),
    );
  }
}

String _$productSupabaseDatasourceHash() =>
    r'03a40484bdc76e7bbbf71b84e897be1f6e039bad';
