import 'package:refily/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:refily/features/auth/domain/repositories/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource _authRemoteDatasource;

  AuthRepositoryImpl(this._authRemoteDatasource);

  @override
  Stream<AuthState> get authStateChanges =>
      _authRemoteDatasource.authStateChanges;

  @override
  Session? get currentSession => _authRemoteDatasource.currentSession;

  @override
  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    return _authRemoteDatasource.signIn(email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    return await _authRemoteDatasource.signOut();
  }

  @override
  Future<AuthResponse> signUp({
    required String email,
    required String password,
  }) async {
    return await _authRemoteDatasource.signUp(email: email, password: password);
  }
}
