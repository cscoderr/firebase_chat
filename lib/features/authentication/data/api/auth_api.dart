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

  Stream<UserModel> get user;

  Future<void> logout();
}

class AuthApiImpl implements AuthApi {
  AuthApiImpl({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;
  final FirebaseAuth _firebaseAuth;
  @override
  Future<User> login({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
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
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
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
  Stream<UserModel> get user {
    return _firebaseAuth.userChanges().map((user) {
      if (user == null) {
        return const UserModel();
      }
      final userModel = UserModel.fromFirebaseUser(user);
      return userModel;
    });
  }

  @override
  Future<void> logout() => _firebaseAuth.signOut();
}
