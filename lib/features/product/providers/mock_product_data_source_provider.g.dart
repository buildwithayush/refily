// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_product_data_source_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(mockProductDatasource)
final mockProductDatasourceProvider = MockProductDatasourceProvider._();

final class MockProductDatasourceProvider
    extends
        $FunctionalProvider<
          MockProductDatasource,
          MockProductDatasource,
          MockProductDatasource
        >
    with $Provider<MockProductDatasource> {
  MockProductDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockProductDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockProductDatasourceHash();

  @$internal
  @override
  $ProviderElement<MockProductDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MockProductDatasource create(Ref ref) {
    return mockProductDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MockProductDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MockProductDatasource>(value),
    );
  }
}

String _$mockProductDatasourceHash() =>
    r'e76fff9f9b81dfe92a5c234dc911a7b8d2d13bc5';
