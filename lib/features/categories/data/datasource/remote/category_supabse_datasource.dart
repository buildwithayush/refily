// features/categories/data/datasources/category_supabase_datasource.dart
import 'package:refily/features/categories/domain/models/category.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CategorySupabaseDatasource {
  final SupabaseClient _client;

  CategorySupabaseDatasource(this._client);

  Future<List<Category>> fetchActiveCategories({DateTime? updatedAfter}) async {
    var query = _client
        .from('categories')
        .select()
        .not('image_url', 'is', null);

    if (updatedAfter != null) {
      query = query.gt('updated_at', updatedAfter.toUtc().toIso8601String());
    }

    final response = await query;

    final rawDataList = List<Map<String, dynamic>>.from(response);

    return rawDataList.map((json) => Category.fromJson(json)).toList();
  }
}
