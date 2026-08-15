import 'package:refily/core/provider/supabase_provider.dart';
import 'package:refily/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:refily/features/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'package:refily/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:refily/features/auth/domain/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_dependency_providers.g.dart';

@riverpod
AuthRemoteDatasource authRemoteDatasource(Ref ref){
  final client = ref.watch(supabaseClientProvider);
  return AuthRemoteDatasourceImpl(client);
}

@riverpod
AuthRepository authRepository(Ref ref){
  final datasource = ref.watch(authRemoteDatasourceProvider);
  return AuthRepositoryImpl(datasource);
}