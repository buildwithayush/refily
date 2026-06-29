// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(mockProductRepository)
final mockProductRepositoryProvider = MockProductRepositoryProvider._();

final class MockProductRepositoryProvider
    extends
        $FunctionalProvider<
          MockProductRepository,
          MockProductRepository,
          MockProductRepository
        >
    with $Provider<MockProductRepository> {
  MockProductRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockProductRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockProductRepositoryHash();

  @$internal
  @override
  $ProviderElement<MockProductRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MockProductRepository create(Ref ref) {
    return mockProductRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MockProductRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MockProductRepository>(value),
    );
  }
}

String _$mockProductRepositoryHash() =>
    r'304ff1416ba5c9e2cafefaaf414f65863b635ade';
