// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_local_datasource_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(categoriesLocalDatasource)
final categoriesLocalDatasourceProvider = CategoriesLocalDatasourceProvider._();

final class CategoriesLocalDatasourceProvider
    extends
        $FunctionalProvider<
          CategoriesLocalDatasource,
          CategoriesLocalDatasource,
          CategoriesLocalDatasource
        >
    with $Provider<CategoriesLocalDatasource> {
  CategoriesLocalDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoriesLocalDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoriesLocalDatasourceHash();

  @$internal
  @override
  $ProviderElement<CategoriesLocalDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CategoriesLocalDatasource create(Ref ref) {
    return categoriesLocalDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoriesLocalDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoriesLocalDatasource>(value),
    );
  }
}

String _$categoriesLocalDatasourceHash() =>
    r'3c777294502a03a44a3e62f0a444e51ba06d832f';
