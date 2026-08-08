// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_datasource_providers.dart';

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

@ProviderFor(productLocalDatasource)
final productLocalDatasourceProvider = ProductLocalDatasourceProvider._();

final class ProductLocalDatasourceProvider
    extends
        $FunctionalProvider<
          ProductLocalDatasource,
          ProductLocalDatasource,
          ProductLocalDatasource
        >
    with $Provider<ProductLocalDatasource> {
  ProductLocalDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productLocalDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productLocalDatasourceHash();

  @$internal
  @override
  $ProviderElement<ProductLocalDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductLocalDatasource create(Ref ref) {
    return productLocalDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductLocalDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductLocalDatasource>(value),
    );
  }
}

String _$productLocalDatasourceHash() =>
    r'285d2bbb65eb002f5e7738eaac906e4180161ed0';
