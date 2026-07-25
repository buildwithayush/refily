import 'package:refily/core/provider/supabase_provider.dart';
import 'package:refily/features/product/data/datasource/remote/product_supabase_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_datasource_provider.g.dart';

@riverpod
ProductSupabaseDatasource productSupabaseDatasource(Ref ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  return ProductSupabaseDatasource(supabaseClient);
}
