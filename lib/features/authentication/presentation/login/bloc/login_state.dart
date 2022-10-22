part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(AppStatus.initial()) AppStatus status,
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool loginValid,
  }) = _LoginState;
}
