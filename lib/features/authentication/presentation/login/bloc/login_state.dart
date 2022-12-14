part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(CommonStatus.initial()) CommonStatus status,
    String? email,
    String? password,
    @Default(true) bool isObsecure,
    @Default(false) bool loginValid,
  }) = _LoginState;
}
