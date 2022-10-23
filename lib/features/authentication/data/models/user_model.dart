import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel with EquatableMixin {
  const UserModel({
    this.id,
    this.name,
    this.email,
    this.photoUrl,
    this.phoneNumber,
  });

  factory UserModel.fromFirebaseUser(User user) {
    print(user.uid);
    return UserModel(
      id: user.uid,
      name: user.displayName,
      email: user.email,
      photoUrl: user.photoURL,
      phoneNumber: user.phoneNumber,
    );
  }

  final String? id;
  final String? name;
  final String? email;
  final String? photoUrl;
  final String? phoneNumber;

  @override
  List<Object?> get props => [id, name, email, photoUrl, phoneNumber];

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, photoUrl: $photoUrl, phoneNumber: $phoneNumber)';
  }
}
