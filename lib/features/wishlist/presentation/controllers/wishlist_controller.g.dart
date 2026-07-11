// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(wishlistRepository)
final wishlistRepositoryProvider = WishlistRepositoryProvider._();

final class WishlistRepositoryProvider
    extends
        $FunctionalProvider<
          WishlistRepository,
          WishlistRepository,
          WishlistRepository
        >
    with $Provider<WishlistRepository> {
  WishlistRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wishlistRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wishlistRepositoryHash();

  @$internal
  @override
  $ProviderElement<WishlistRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WishlistRepository create(Ref ref) {
    return wishlistRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WishlistRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WishlistRepository>(value),
    );
  }
}

String _$wishlistRepositoryHash() =>
    r'35584d0567bf0b996ea01aa82b30620485a37fc4';

@ProviderFor(WishlistController)
final wishlistControllerProvider = WishlistControllerProvider._();

final class WishlistControllerProvider
    extends $AsyncNotifierProvider<WishlistController, Set<Product>> {
  WishlistControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wishlistControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wishlistControllerHash();

  @$internal
  @override
  WishlistController create() => WishlistController();
}

String _$wishlistControllerHash() =>
    r'551ba0422c04eb821c9163db3c6be99962f1514e';

abstract class _$WishlistController extends $AsyncNotifier<Set<Product>> {
  FutureOr<Set<Product>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Set<Product>>, Set<Product>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Set<Product>>, Set<Product>>,
              AsyncValue<Set<Product>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(checkWishlistStatus)
final checkWishlistStatusProvider = CheckWishlistStatusFamily._();

final class CheckWishlistStatusProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  CheckWishlistStatusProvider._({
    required CheckWishlistStatusFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'checkWishlistStatusProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checkWishlistStatusHash();

  @override
  String toString() {
    return r'checkWishlistStatusProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    final argument = this.argument as int;
    return checkWishlistStatus(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckWishlistStatusProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkWishlistStatusHash() =>
    r'7160032ca8207568fee9b24afe00826c6442c5e3';

final class CheckWishlistStatusFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<bool>, int> {
  CheckWishlistStatusFamily._()
    : super(
        retry: null,
        name: r'checkWishlistStatusProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  CheckWishlistStatusProvider call(int productId) =>
      CheckWishlistStatusProvider._(argument: productId, from: this);

  @override
  String toString() => r'checkWishlistStatusProvider';
}

@ProviderFor(wishlistCount)
final wishlistCountProvider = WishlistCountProvider._();

final class WishlistCountProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  WishlistCountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wishlistCountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wishlistCountHash();

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    return wishlistCount(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$wishlistCountHash() => r'a8c2112da911cb664ac7ef2ea20475511275404f';
