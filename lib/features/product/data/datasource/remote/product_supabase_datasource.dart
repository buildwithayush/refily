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

  // Single Product Fetching
  Future<Map<String, dynamic>?> getProductById(int id) async {
    final response = await _client
        .from('products')
        .select()
        .eq('id', id)
        .maybeSingle();

    return response;
  }

  // Direct Supabase In-Filter Query
  Future<List<Map<String, dynamic>>> getProductsByIds(List<int> ids) async {
    if (ids.isEmpty) return [];

    final response = await _client
        .from('products')
        .select()
        .inFilter('id', ids); // Supabase IN filter

    return List<Map<String, dynamic>>.from(response);
  }
}
