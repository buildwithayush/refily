// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_supabase_datasource_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(categorySupabaseDatasource)
final categorySupabaseDatasourceProvider =
    CategorySupabaseDatasourceProvider._();

final class CategorySupabaseDatasourceProvider
    extends
        $FunctionalProvider<
          CategorySupabaseDatasource,
          CategorySupabaseDatasource,
          CategorySupabaseDatasource
        >
    with $Provider<CategorySupabaseDatasource> {
  CategorySupabaseDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categorySupabaseDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categorySupabaseDatasourceHash();

  @$internal
  @override
  $ProviderElement<CategorySupabaseDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CategorySupabaseDatasource create(Ref ref) {
    return categorySupabaseDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategorySupabaseDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategorySupabaseDatasource>(value),
    );
  }
}

String _$categorySupabaseDatasourceHash() =>
    r'8b33d006cb445c87bb185eefb4373c15e9116a00';
