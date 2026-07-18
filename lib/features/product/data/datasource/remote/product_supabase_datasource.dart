import 'package:supabase_flutter/supabase_flutter.dart';

class ProductSupabaseDatasource {
  final SupabaseClient _client;

  ProductSupabaseDatasource(this._client);

  /// Fetch products belonging to specific category
  Future<List<Map<String, dynamic>>> getProductsByCategory(
    int categoryId,
  ) async {
    final response = await _client
        .from('products')
        .select()
        .eq('category_id', categoryId);

    return List<Map<String, dynamic>>.from(response);
  }

  /// Fetch entire items catalog for mix-matching
  Future<List<Map<String, dynamic>>> getAllProducts() async {
    final response = await _client.from('products').select();
    return List<Map<String, dynamic>>.from(response);
  }
}
