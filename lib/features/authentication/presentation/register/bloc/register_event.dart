part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.fullNameChanged(String fullName) =
      FullNameChanged;
  const factory RegisterEvent.usernameChanged(String username) =
      UsernameChanged;
  const factory RegisterEvent.emailChanged(String email) = RegisterEmailChanged;
  const factory RegisterEvent.passwordChanged(String password) =
      RegisterPasswordChanged;
  const factory RegisterEvent.confirmPasswordChanged(String confirmPassword) =
      RegisterConfirmPasswordChanged;
  const factory RegisterEvent.submitted() = RegisterSubmitted;
  const factory RegisterEvent.valid() = RegisterValid;
  const factory RegisterEvent.togglePassword() = RegisterTogglePassword;
  const factory RegisterEvent.toggleConfirmPassword() =
      RegisterToggleConfirmPassword;
}
