import 'package:firebase_chat/features/authentication/authentication.dart';

abstract class AuthRepository {
  Stream<UserModel> get user;

  Future<void> login({
    required String email,
    required String password,
  });
  Future<void> register({
    required String email,
    required String password,
  });

  Future<void> logout();
}
