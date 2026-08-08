import 'package:refily/features/home/banner/domain/mock/home_banner_data.dart';
import 'package:refily/features/home/banner/domain/model/banner_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_images_provider.g.dart';

@riverpod
Future<List<BannerModel>> banner(Ref ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return mockBannerList;
}
