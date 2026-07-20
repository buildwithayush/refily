// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_images_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(banner)
final bannerProvider = BannerProvider._();

final class BannerProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<BannerModel>>,
          List<BannerModel>,
          FutureOr<List<BannerModel>>
        >
    with
        $FutureModifier<List<BannerModel>>,
        $FutureProvider<List<BannerModel>> {
  BannerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bannerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bannerHash();

  @$internal
  @override
  $FutureProviderElement<List<BannerModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<BannerModel>> create(Ref ref) {
    return banner(ref);
  }
}

String _$bannerHash() => r'132d86fb8d61b740bd9b90e4619a761bacd68e55';
