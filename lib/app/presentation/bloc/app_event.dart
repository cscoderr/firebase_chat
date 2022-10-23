part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.userChanged(UserModel user) = AppUserChanged;
  const factory AppEvent.logout(UserModel user) = AppLogout;
}
