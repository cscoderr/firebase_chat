import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_exception.freezed.dart';

@freezed
class AuthException with _$AuthException implements Exception {
  factory AuthException.unknown(Object? e, StackTrace stackTrace) = Unknown;
  factory AuthException.weakPassword() = WeakPassword;
  factory AuthException.emailAlreadyInUse() = EmailAlreadyInUse;
  factory AuthException.invalidEmail() = InvalidEmail;
  factory AuthException.userNotFound() = UserNotFound;
  factory AuthException.wrongPassword() = WrongPassword;
  factory AuthException.tooManyRequests() = TooManyRequests;
  factory AuthException.authApiException({required String code, Object? e}) =
      AuthApiException;
}

extension ApiExceptionEx on AuthApiException {
  AuthException get exception {
    switch (code) {
      case 'weak-password':
        return AuthException.weakPassword();
      case 'email-already-in-use':
        return AuthException.emailAlreadyInUse();
      case 'invalid-email':
        return AuthException.invalidEmail();
      case 'user-not-found':
        return AuthException.userNotFound();
      case 'wrong-password':
        return AuthException.wrongPassword();
      case 'too-many-requests':
        return AuthException.tooManyRequests();
      default:
        return AuthException.unknown(
          e?.toString() ?? 'An error occur',
          StackTrace.current,
        );
    }
  }
}

extension AuthExceptionEx on AuthException {
  String get message {
    final message = whenOrNull(
      unknown: (e, stackTrace) => 'Error: ${e.toString()}',
      weakPassword: () => 'The password is too weak.',
      emailAlreadyInUse: () => 'The account already exists.',
      invalidEmail: () => 'The email address is badly formatted.',
      userNotFound: () => 'Invalid email or password',
      wrongPassword: () => 'Wrong password provided.',
      tooManyRequests: () => 'Too many requests. Try again later.',
    );
    return message ?? 'Unknown error';
  }
}
