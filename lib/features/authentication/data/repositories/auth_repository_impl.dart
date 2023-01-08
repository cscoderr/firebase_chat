import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({FirebaseAuth? firebaseAuth, FirebaseFirestore? firestore})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  @override
  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw (AuthException.mapException(code: e.code) as MapException)
          .exception;
    } catch (e, stackTrace) {
      throw AuthException.unknown(e, stackTrace);
    }
  }

  @override
  Future<void> register({
    required String fullName,
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _firestore.collection('users').doc(userCredential.user!.uid).set({
        'fullName': fullName,
        'email': email,
        'username': username,
        'uid': userCredential.user!.uid,
      });
    } on FirebaseAuthException catch (e) {
      throw (AuthException.mapException(code: e.code) as MapException)
          .exception;
    } catch (e, stackTrace) {
      throw AuthException.unknown(e, stackTrace);
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
