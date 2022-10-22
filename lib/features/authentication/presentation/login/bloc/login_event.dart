// ignore_for_file: avoid_positional_boolean_parameters

part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String email) = EmailChanged;
  const factory LoginEvent.passwordChanged(String password) = PasswordChanged;
  const factory LoginEvent.valid() = LoginValid;
  const factory LoginEvent.toogle() = TogglePassword;
  const factory LoginEvent.submitted() = LoginSubmitted;
}
