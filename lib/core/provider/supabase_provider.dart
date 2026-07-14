import 'package:refily/core/services/supabase_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'supabase_provider.g.dart';

// Singleton instance wrapper injection
@riverpod
SupabaseClient supabaseClient(Ref ref) {
  return SupabaseService().client;
}
