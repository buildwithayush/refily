import 'package:refily/core/provider/supabase_provider.dart';
import 'package:refily/features/categories/data/datasource/remote/category_supabse_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_supabase_datasource_provider.g.dart';

@riverpod
CategorySupabaseDatasource categorySupabaseDatasource(Ref ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  return CategorySupabaseDatasource(supabaseClient);
}