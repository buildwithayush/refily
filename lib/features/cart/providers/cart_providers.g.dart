// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cartLocalDatasource)
final cartLocalDatasourceProvider = CartLocalDatasourceProvider._();

final class CartLocalDatasourceProvider
    extends
        $FunctionalProvider<
          CartLocalDatasource,
          CartLocalDatasource,
          CartLocalDatasource
        >
    with $Provider<CartLocalDatasource> {
  CartLocalDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartLocalDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartLocalDatasourceHash();

  @$internal
  @override
  $ProviderElement<CartLocalDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CartLocalDatasource create(Ref ref) {
    return cartLocalDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartLocalDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartLocalDatasource>(value),
    );
  }
}

String _$cartLocalDatasourceHash() =>
    r'65d208118f70dbbd234944b229912d9df7d9287e';

@ProviderFor(cartRepository)
final cartRepositoryProvider = CartRepositoryProvider._();

final class CartRepositoryProvider
    extends $FunctionalProvider<CartRepository, CartRepository, CartRepository>
    with $Provider<CartRepository> {
  CartRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartRepositoryHash();

  @$internal
  @override
  $ProviderElement<CartRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CartRepository create(Ref ref) {
    return cartRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartRepository>(value),
    );
  }
}

String _$cartRepositoryHash() => r'98bfd7f22c169ac07dadfece48e80bf8bd33cfc7';

@ProviderFor(cartStream)
final cartStreamProvider = CartStreamProvider._();

final class CartStreamProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CartItem>>,
          List<CartItem>,
          Stream<List<CartItem>>
        >
    with $FutureModifier<List<CartItem>>, $StreamProvider<List<CartItem>> {
  CartStreamProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartStreamProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<CartItem>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<CartItem>> create(Ref ref) {
    return cartStream(ref);
  }
}

String _$cartStreamHash() => r'1ab27982ed2f8aa62c26b49669b946be5855420a';

/// . Cart Total Price Calculation Provider

@ProviderFor(cartTotalPrice)
final cartTotalPriceProvider = CartTotalPriceProvider._();

/// . Cart Total Price Calculation Provider

final class CartTotalPriceProvider
    extends $FunctionalProvider<double, double, double>
    with $Provider<double> {
  /// . Cart Total Price Calculation Provider
  CartTotalPriceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartTotalPriceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartTotalPriceHash();

  @$internal
  @override
  $ProviderElement<double> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  double create(Ref ref) {
    return cartTotalPrice(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$cartTotalPriceHash() => r'4c119a19ade216f5aad2eb70ffac30213fb07039';

///  Cart Total Unique Items / Quantity Count Provider

@ProviderFor(cartTotalCount)
final cartTotalCountProvider = CartTotalCountProvider._();

///  Cart Total Unique Items / Quantity Count Provider

final class CartTotalCountProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  ///  Cart Total Unique Items / Quantity Count Provider
  CartTotalCountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartTotalCountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartTotalCountHash();

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    return cartTotalCount(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$cartTotalCountHash() => r'b47b4f3d1551320ba7124f4881a54708b949e4ec';
