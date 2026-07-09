// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_category_data_source_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(mockCategoryDatasource)
final mockCategoryDatasourceProvider = MockCategoryDatasourceProvider._();

final class MockCategoryDatasourceProvider
    extends
        $FunctionalProvider<
          MockCategoryDatasource,
          MockCategoryDatasource,
          MockCategoryDatasource
        >
    with $Provider<MockCategoryDatasource> {
  MockCategoryDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockCategoryDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockCategoryDatasourceHash();

  @$internal
  @override
  $ProviderElement<MockCategoryDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MockCategoryDatasource create(Ref ref) {
    return mockCategoryDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MockCategoryDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MockCategoryDatasource>(value),
    );
  }
}

String _$mockCategoryDatasourceHash() =>
    r'd749ed5a1f6158ae82dcd7a28a5cc1b510a38896';
