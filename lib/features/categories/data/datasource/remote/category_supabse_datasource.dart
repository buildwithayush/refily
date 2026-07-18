// features/categories/data/datasources/category_supabase_datasource.dart
import 'package:refily/features/categories/domain/models/category.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CategorySupabaseDatasource {
  final SupabaseClient _client;

  CategorySupabaseDatasource(this._client);

  Future<List<Category>> getCategoriesByIds(List<int> categoryIds) async {
    if (categoryIds.isEmpty) return [];

    final response = await _client
        .from('categories')
        .select()
        .inFilter('id', categoryIds)
        .not('image_url', 'is', null);

    final rawDataList = List<Map<String, dynamic>>.from(response);

    return rawDataList.map((json) => Category.fromJson(json)).toList();
  }
}
