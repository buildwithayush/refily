// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = SharedPreferencesProvider._();

final class SharedPreferencesProvider
    extends
        $FunctionalProvider<
          SharedPreferences,
          SharedPreferences,
          SharedPreferences
        >
    with $Provider<SharedPreferences> {
  SharedPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesHash();

  @$internal
  @override
  $ProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SharedPreferences create(Ref ref) {
    return sharedPreferences(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferences value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPreferences>(value),
    );
  }
}

String _$sharedPreferencesHash() => r'9ce5d3a1d8e34e1852c77b7a602fe3158dd8f0ca';

@ProviderFor(sharedPrefsService)
final sharedPrefsServiceProvider = SharedPrefsServiceProvider._();

final class SharedPrefsServiceProvider
    extends
        $FunctionalProvider<
          SharedPrefsService,
          SharedPrefsService,
          SharedPrefsService
        >
    with $Provider<SharedPrefsService> {
  SharedPrefsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPrefsServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPrefsServiceHash();

  @$internal
  @override
  $ProviderElement<SharedPrefsService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SharedPrefsService create(Ref ref) {
    return sharedPrefsService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPrefsService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPrefsService>(value),
    );
  }
}

String _$sharedPrefsServiceHash() =>
    r'f64dbb39c9343eb1629605e685fa47f97014c60e';

@ProviderFor(ThemeNotifier)
final themeProvider = ThemeNotifierProvider._();

final class ThemeNotifierProvider
    extends $NotifierProvider<ThemeNotifier, bool> {
  ThemeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeNotifierHash();

  @$internal
  @override
  ThemeNotifier create() => ThemeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$themeNotifierHash() => r'78811ac20dbfc4998551dcf6a08f79e178e42361';

abstract class _$ThemeNotifier extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
