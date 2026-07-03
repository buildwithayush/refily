// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartController)
final cartControllerProvider = CartControllerProvider._();

final class CartControllerProvider
    extends $NotifierProvider<CartController, Map<int, CartItem>> {
  CartControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartControllerHash();

  @$internal
  @override
  CartController create() => CartController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<int, CartItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<int, CartItem>>(value),
    );
  }
}

String _$cartControllerHash() => r'6a640199abc84907b03d80bb911d7c3806fcf55b';

abstract class _$CartController extends $Notifier<Map<int, CartItem>> {
  Map<int, CartItem> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<Map<int, CartItem>, Map<int, CartItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<int, CartItem>, Map<int, CartItem>>,
              Map<int, CartItem>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(cartCount)
final cartCountProvider = CartCountProvider._();

final class CartCountProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  CartCountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartCountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartCountHash();

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    return cartCount(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$cartCountHash() => r'7affd8db9787a61d7e49d7a98ea439d2c76f067f';
