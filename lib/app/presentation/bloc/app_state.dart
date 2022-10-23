part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(AppStatus.initial()) AppStatus status,
    @Default(UserModel()) UserModel user,
  }) = _AppState;
}
