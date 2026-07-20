import 'package:refily/features/home/banner/domain/enum/banner_redirect_type.dart';
import 'package:refily/features/home/banner/domain/model/banner_model.dart';

final List<BannerModel> mockBannerList = [
  const BannerModel(
    id: 1,
    imageUrl: "assets/home/accessories_banner.png",
    redirectType: BannerRedirectType.category,
    redirectId: 9,
    isActive: true,
    displayOrder: 1,
  ),
  const BannerModel(
    id: 2,
    imageUrl: "assets/home/books_banner.png",
    redirectType: BannerRedirectType.category,
    redirectId: 7,
    isActive: true,
    displayOrder: 2,
  ),
  const BannerModel(
    id: 3,
    imageUrl: "assets/home/electronics_banner.png",
    redirectType: BannerRedirectType.category,
    redirectId: 1,
    isActive: true,
    displayOrder: 3,
  ),
  const BannerModel(
    id: 4,

    imageUrl: "assets/home/groceries_banner.png",
    redirectType: BannerRedirectType.category,
    redirectId: 8,
    isActive: true,
    displayOrder: 4,
  ),
  const BannerModel(
    id: 5,
    imageUrl: "assets/home/sports_banner.png",
    redirectType: BannerRedirectType.category,
    redirectId: 6,
    isActive: true,
    displayOrder: 5,
  ),
  const BannerModel(
    id: 6,
    imageUrl: "assets/home/home_and_kitchen_banner.png",
    redirectType: BannerRedirectType.category,
    redirectId: 5,
    isActive: true,
    displayOrder: 6,
  ),
];
