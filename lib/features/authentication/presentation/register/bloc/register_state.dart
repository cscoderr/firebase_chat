part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(CommonStatus.initial()) CommonStatus status,
    String? fullName,
    String? username,
    String? email,
    String? password,
    String? confirmPassword,
    @Default(true) bool isPasswordObsecure,
    @Default(true) bool isConfirmPasswordObsecure,
    @Default(false) bool registerValid,
  }) = _RegisterState;
}
