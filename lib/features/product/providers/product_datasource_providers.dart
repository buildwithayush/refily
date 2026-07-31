import 'package:refily/core/database/isar_provider.dart';
import 'package:refily/core/provider/supabase_provider.dart';
import 'package:refily/features/product/data/datasource/local/product_local_datasource.dart';
import 'package:refily/features/product/data/datasource/remote/product_supabase_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_datasource_providers.g.dart';

@riverpod
ProductSupabaseDatasource productSupabaseDatasource(Ref ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  return ProductSupabaseDatasource(supabaseClient);
}

@riverpod
ProductLocalDatasource productLocalDatasource(Ref ref) {
  final isar = ref.watch(isarProvider);
  return ProductLocalDatasource(isar);
}
