import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel with EquatableMixin {
  const UserModel({
    this.id,
    this.name,
    this.email,
    this.photoUrl,
    this.phoneNumber,
  });

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      id: user.uid,
      name: user.displayName,
      // username: user.username
      email: user.email,
      photoUrl: user.photoURL,
      phoneNumber: user.phoneNumber,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  final String? id;
  final String? name;
  // final String? username;
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
