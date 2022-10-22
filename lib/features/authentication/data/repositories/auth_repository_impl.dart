import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    AuthApi? authApi,
  }) : _authApi = authApi ?? AuthApiImpl();
  final AuthApi _authApi;
  @override
  Future<User> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _authApi.login(email: email, password: password);
      return response;
    } on AuthApiException catch (e) {
      throw e.exception;
    }
  }

  @override
  Future<User> register({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _authApi.login(email: email, password: password);
      return response;
    } on AuthApiException catch (e) {
      throw e.exception;
    }
  }
}
