import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_status.freezed.dart';

@freezed
class CommonStatus with _$CommonStatus {
  const factory CommonStatus.loading() = Loading;
  const factory CommonStatus.success() = Success;
  const factory CommonStatus.error(String error) = Error;
  const factory CommonStatus.initial() = Initial;
}

@freezed
class AppStatus with _$AppStatus {
  const factory AppStatus.authenticated(UserModel user) = Authenticated;
  const factory AppStatus.unauthenticated() = Unauthenticated;
  const factory AppStatus.initial() = AppInitial;
}
