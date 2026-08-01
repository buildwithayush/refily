import 'package:isar_plus/isar_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:refily/features/categories/domain/models/category_isar_model.dart';
import 'package:refily/features/product/data/models/product_isar_model.dart';
import 'package:refily/features/wishlist/data/models/wishlist_isar_model.dart';

class IsarDatabase {
  static Future<Isar> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.openAsync(
      schemas: [
        WishlistIsarModelSchema,
        ProductIsarModelSchema,
        CategoryIsarModelSchema,
      ],
      directory: dir.path,
    );
  }
}
