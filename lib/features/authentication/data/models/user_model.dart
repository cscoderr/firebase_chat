import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel with EquatableMixin {
  UserModel({
    this.id,
    this.name,
    this.email,
    this.photoUrl,
    this.phoneNumber,
  });

  factory UserModel.fromFirebaseUser(User user) => UserModel(
        id: user.uid,
        name: user.displayName,
        email: user.email,
        photoUrl: user.photoURL,
        phoneNumber: user.phoneNumber,
      );

  String? id;
  String? name;
  String? email;
  String? photoUrl;
  String? phoneNumber;

  @override
  List<Object?> get props => [id, name];
}
