// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// FETCH PRODUCTS BY TARGET CATEGORY ID

@ProviderFor(fetchCategoryProduct)
final fetchCategoryProductProvider = FetchCategoryProductFamily._();

/// FETCH PRODUCTS BY TARGET CATEGORY ID

final class FetchCategoryProductProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  /// FETCH PRODUCTS BY TARGET CATEGORY ID
  FetchCategoryProductProvider._({
    required FetchCategoryProductFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'fetchCategoryProductProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchCategoryProductHash();

  @override
  String toString() {
    return r'fetchCategoryProductProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    final argument = this.argument as int;
    return fetchCategoryProduct(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchCategoryProductProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchCategoryProductHash() =>
    r'21f4a3b51237708016596e7f42eab0dbadfb1aa8';

/// FETCH PRODUCTS BY TARGET CATEGORY ID

final class FetchCategoryProductFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Product>>, int> {
  FetchCategoryProductFamily._()
    : super(
        retry: null,
        name: r'fetchCategoryProductProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// FETCH PRODUCTS BY TARGET CATEGORY ID

  FetchCategoryProductProvider call(int categoryId) =>
      FetchCategoryProductProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'fetchCategoryProductProvider';
}
