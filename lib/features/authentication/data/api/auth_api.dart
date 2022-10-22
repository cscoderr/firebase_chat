import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';

abstract class AuthApi {
  Future<User> login({
    required String email,
    required String password,
  });

  Future<User> register({
    required String email,
    required String password,
  });
}

class AuthApiImpl implements AuthApi {
  @override
  Future<User> login({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user != null) {
        return credential.user!;
      }
      throw AuthException.authApiException(code: 'user-not-found');
    } on FirebaseAuthException catch (e) {
      throw AuthException.authApiException(code: e.code);
    } catch (e) {
      throw AuthException.authApiException(code: 'unknown', e: e);
    }
  }

  @override
  Future<User> register({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user != null) {
        return credential.user!;
      }
      throw AuthException.authApiException(code: 'user-not-found');
    } on FirebaseAuthException catch (e) {
      throw AuthException.authApiException(code: e.code);
    } catch (e) {
      throw AuthException.authApiException(code: 'unknown', e: e);
    }
  }
}
