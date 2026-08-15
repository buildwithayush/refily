import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepository {
  Stream<AuthState> get authStateChanges;
  Session? get currentSession;

  Future<AuthResponse> signIn({
    required String email,
    required String password,
  });
  Future<AuthResponse> signUp({
    required String email,
    required String password,
  });
  Future<void> signOut();
}
