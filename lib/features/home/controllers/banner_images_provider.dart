import 'package:refily/features/home/helper/banner_images.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_images_provider.g.dart';

@riverpod
Future<List<String>> banner(Ref ref) async {
  await Future.delayed(const Duration(seconds: 2));
  return bannerImages;
}
