part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(AppStatus.initial()) AppStatus status,
    String? email,
    String? password,
    String? confirmPassword,
    @Default(true) bool isPasswordObsecure,
    @Default(true) bool isConfirmPasswordObsecure,
    @Default(false) bool registerValid,
  }) = _RegisterState;
}
