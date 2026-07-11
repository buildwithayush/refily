// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_product_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchCategoryProduct)
final fetchCategoryProductProvider = FetchCategoryProductFamily._();

final class FetchCategoryProductProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
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
    r'168c87f35ef8e642ee796703a4f7beb4c3ddf828';

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

  FetchCategoryProductProvider call(int categoryId) =>
      FetchCategoryProductProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'fetchCategoryProductProvider';
}
