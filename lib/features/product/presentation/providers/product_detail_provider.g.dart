// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productDetail)
final productDetailProvider = ProductDetailFamily._();

final class ProductDetailProvider
    extends $FunctionalProvider<AsyncValue<Product>, Product, FutureOr<Product>>
    with $FutureModifier<Product>, $FutureProvider<Product> {
  ProductDetailProvider._({
    required ProductDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'productDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productDetailHash();

  @override
  String toString() {
    return r'productDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Product> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Product> create(Ref ref) {
    final argument = this.argument as int;
    return productDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productDetailHash() => r'32b9c1be9cb6d4d2374260e3e64873a3dab84223';

final class ProductDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Product>, int> {
  ProductDetailFamily._()
    : super(
        retry: null,
        name: r'productDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductDetailProvider call(int productId) =>
      ProductDetailProvider._(argument: productId, from: this);

  @override
  String toString() => r'productDetailProvider';
}

@ProviderFor(relatedProducts)
final relatedProductsProvider = RelatedProductsFamily._();

final class RelatedProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  RelatedProductsProvider._({
    required RelatedProductsFamily super.from,
    required ({String category, int currentProductId}) super.argument,
  }) : super(
         retry: null,
         name: r'relatedProductsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$relatedProductsHash();

  @override
  String toString() {
    return r'relatedProductsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    final argument = this.argument as ({String category, int currentProductId});
    return relatedProducts(
      ref,
      category: argument.category,
      currentProductId: argument.currentProductId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RelatedProductsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$relatedProductsHash() => r'd6d7e28ad600d8e74b426c2cc9be31cf8849bbd3';

final class RelatedProductsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<Product>>,
          ({String category, int currentProductId})
        > {
  RelatedProductsFamily._()
    : super(
        retry: null,
        name: r'relatedProductsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RelatedProductsProvider call({
    required String category,
    required int currentProductId,
  }) => RelatedProductsProvider._(
    argument: (category: category, currentProductId: currentProductId),
    from: this,
  );

  @override
  String toString() => r'relatedProductsProvider';
}

@ProviderFor(WishList)
final wishListProvider = WishListProvider._();

final class WishListProvider extends $NotifierProvider<WishList, Set<int>> {
  WishListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wishListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wishListHash();

  @$internal
  @override
  WishList create() => WishList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<int>>(value),
    );
  }
}

String _$wishListHash() => r'a4dcf58c43ae0a75befad086bc1710b8bb370a49';

abstract class _$WishList extends $Notifier<Set<int>> {
  Set<int> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<Set<int>, Set<int>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Set<int>, Set<int>>,
              Set<int>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
