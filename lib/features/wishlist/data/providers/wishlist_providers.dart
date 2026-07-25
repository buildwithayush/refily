import 'package:refily/core/database/isar_provider.dart';
import 'package:refily/features/wishlist/data/datasource/local/wishlist_local_datasource.dart';
import 'package:refily/features/wishlist/data/datasource/local/wishlist_local_datasource_impl.dart';
import 'package:refily/features/wishlist/data/repositories/wishlist_repository_impl.dart';
import 'package:refily/features/wishlist/domain/repositories/wishlist_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wishlist_providers.g.dart';

@riverpod
WishlistLocalDatasource wishlistLocalDatasource(Ref ref) {
  final isar = ref.watch(isarProvider);
  return WishlistLocalDatasourceImpl(isar);
}

@riverpod
WishlistRepository wishlistRepository(Ref ref) {
  final localDataSource = ref.watch(wishlistLocalDatasourceProvider);
  return WishlistRepositoryImpl(localDataSource: localDataSource);
}
