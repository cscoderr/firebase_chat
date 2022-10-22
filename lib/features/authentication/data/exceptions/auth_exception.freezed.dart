// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace stackTrace) unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() tooManyRequests,
    required TResult Function(String code, Object? e) authApiException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace stackTrace)? unknown,
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function(String code, Object? e)? authApiException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace stackTrace)? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? tooManyRequests,
    TResult Function(String code, Object? e)? authApiException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(AuthApiException value) authApiException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(WrongPassword value)? wrongPassword,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(AuthApiException value)? authApiException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(AuthApiException value)? authApiException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res, AuthException>;
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res, $Val extends AuthException>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? e, StackTrace stackTrace});
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$Unknown>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$Unknown(
      freezed == e ? _value.e : e,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$Unknown implements Unknown {
  _$Unknown(this.e, this.stackTrace);

  @override
  final Object? e;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AuthException.unknown(e: $e, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unknown &&
            const DeepCollectionEquality().equals(other.e, e) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(e), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      __$$UnknownCopyWithImpl<_$Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace stackTrace) unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() tooManyRequests,
    required TResult Function(String code, Object? e) authApiException,
  }) {
    return unknown(e, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace stackTrace)? unknown,
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function(String code, Object? e)? authApiException,
  }) {
    return unknown?.call(e, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace stackTrace)? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? tooManyRequests,
    TResult Function(String code, Object? e)? authApiException,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(e, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(AuthApiException value) authApiException,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(WrongPassword value)? wrongPassword,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(AuthApiException value)? authApiException,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(AuthApiException value)? authApiException,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements AuthException {
  factory Unknown(final Object? e, final StackTrace stackTrace) = _$Unknown;

  Object? get e;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeakPasswordCopyWith<$Res> {
  factory _$$WeakPasswordCopyWith(
          _$WeakPassword value, $Res Function(_$WeakPassword) then) =
      __$$WeakPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeakPasswordCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$WeakPassword>
    implements _$$WeakPasswordCopyWith<$Res> {
  __$$WeakPasswordCopyWithImpl(
      _$WeakPassword _value, $Res Function(_$WeakPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeakPassword implements WeakPassword {
  _$WeakPassword();

  @override
  String toString() {
    return 'AuthException.weakPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeakPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace stackTrace) unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() tooManyRequests,
    required TResult Function(String code, Object? e) authApiException,
  }) {
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace stackTrace)? unknown,
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function(String code, Object? e)? authApiException,
  }) {
    return weakPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace stackTrace)? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? tooManyRequests,
    TResult Function(String code, Object? e)? authApiException,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(AuthApiException value) authApiException,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(WrongPassword value)? wrongPassword,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(AuthApiException value)? authApiException,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(AuthApiException value)? authApiException,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class WeakPassword implements AuthException {
  factory WeakPassword() = _$WeakPassword;
}

/// @nodoc
abstract class _$$EmailAlreadyInUseCopyWith<$Res> {
  factory _$$EmailAlreadyInUseCopyWith(
          _$EmailAlreadyInUse value, $Res Function(_$EmailAlreadyInUse) then) =
      __$$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$EmailAlreadyInUse>
    implements _$$EmailAlreadyInUseCopyWith<$Res> {
  __$$EmailAlreadyInUseCopyWithImpl(
      _$EmailAlreadyInUse _value, $Res Function(_$EmailAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthException.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace stackTrace) unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() tooManyRequests,
    required TResult Function(String code, Object? e) authApiException,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace stackTrace)? unknown,
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function(String code, Object? e)? authApiException,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace stackTrace)? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? tooManyRequests,
    TResult Function(String code, Object? e)? authApiException,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(AuthApiException value) authApiException,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(WrongPassword value)? wrongPassword,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(AuthApiException value)? authApiException,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(AuthApiException value)? authApiException,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthException {
  factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<$Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail value, $Res Function(_$InvalidEmail) then) =
      __$$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$InvalidEmail>
    implements _$$InvalidEmailCopyWith<$Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail _value, $Res Function(_$InvalidEmail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  _$InvalidEmail();

  @override
  String toString() {
    return 'AuthException.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace stackTrace) unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() tooManyRequests,
    required TResult Function(String code, Object? e) authApiException,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace stackTrace)? unknown,
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function(String code, Object? e)? authApiException,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace stackTrace)? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? tooManyRequests,
    TResult Function(String code, Object? e)? authApiException,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(AuthApiException value) authApiException,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(WrongPassword value)? wrongPassword,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(AuthApiException value)? authApiException,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(AuthApiException value)? authApiException,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements AuthException {
  factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class _$$UserNotFoundCopyWith<$Res> {
  factory _$$UserNotFoundCopyWith(
          _$UserNotFound value, $Res Function(_$UserNotFound) then) =
      __$$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$UserNotFound>
    implements _$$UserNotFoundCopyWith<$Res> {
  __$$UserNotFoundCopyWithImpl(
      _$UserNotFound _value, $Res Function(_$UserNotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotFound implements UserNotFound {
  _$UserNotFound();

  @override
  String toString() {
    return 'AuthException.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace stackTrace) unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() tooManyRequests,
    required TResult Function(String code, Object? e) authApiException,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace stackTrace)? unknown,
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function(String code, Object? e)? authApiException,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace stackTrace)? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? tooManyRequests,
    TResult Function(String code, Object? e)? authApiException,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(AuthApiException value) authApiException,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(WrongPassword value)? wrongPassword,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(AuthApiException value)? authApiException,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(AuthApiException value)? authApiException,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements AuthException {
  factory UserNotFound() = _$UserNotFound;
}

/// @nodoc
abstract class _$$WrongPasswordCopyWith<$Res> {
  factory _$$WrongPasswordCopyWith(
          _$WrongPassword value, $Res Function(_$WrongPassword) then) =
      __$$WrongPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongPasswordCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$WrongPassword>
    implements _$$WrongPasswordCopyWith<$Res> {
  __$$WrongPasswordCopyWithImpl(
      _$WrongPassword _value, $Res Function(_$WrongPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WrongPassword implements WrongPassword {
  _$WrongPassword();

  @override
  String toString() {
    return 'AuthException.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WrongPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace stackTrace) unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() tooManyRequests,
    required TResult Function(String code, Object? e) authApiException,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace stackTrace)? unknown,
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function(String code, Object? e)? authApiException,
  }) {
    return wrongPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace stackTrace)? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? tooManyRequests,
    TResult Function(String code, Object? e)? authApiException,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(AuthApiException value) authApiException,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(WrongPassword value)? wrongPassword,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(AuthApiException value)? authApiException,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(AuthApiException value)? authApiException,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class WrongPassword implements AuthException {
  factory WrongPassword() = _$WrongPassword;
}

/// @nodoc
abstract class _$$TooManyRequestsCopyWith<$Res> {
  factory _$$TooManyRequestsCopyWith(
          _$TooManyRequests value, $Res Function(_$TooManyRequests) then) =
      __$$TooManyRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TooManyRequestsCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$TooManyRequests>
    implements _$$TooManyRequestsCopyWith<$Res> {
  __$$TooManyRequestsCopyWithImpl(
      _$TooManyRequests _value, $Res Function(_$TooManyRequests) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TooManyRequests implements TooManyRequests {
  _$TooManyRequests();

  @override
  String toString() {
    return 'AuthException.tooManyRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TooManyRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace stackTrace) unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() tooManyRequests,
    required TResult Function(String code, Object? e) authApiException,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace stackTrace)? unknown,
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function(String code, Object? e)? authApiException,
  }) {
    return tooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace stackTrace)? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? tooManyRequests,
    TResult Function(String code, Object? e)? authApiException,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(AuthApiException value) authApiException,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(WrongPassword value)? wrongPassword,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(AuthApiException value)? authApiException,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(AuthApiException value)? authApiException,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class TooManyRequests implements AuthException {
  factory TooManyRequests() = _$TooManyRequests;
}

/// @nodoc
abstract class _$$AuthApiExceptionCopyWith<$Res> {
  factory _$$AuthApiExceptionCopyWith(
          _$AuthApiException value, $Res Function(_$AuthApiException) then) =
      __$$AuthApiExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, Object? e});
}

/// @nodoc
class __$$AuthApiExceptionCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$AuthApiException>
    implements _$$AuthApiExceptionCopyWith<$Res> {
  __$$AuthApiExceptionCopyWithImpl(
      _$AuthApiException _value, $Res Function(_$AuthApiException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? e = freezed,
  }) {
    return _then(_$AuthApiException(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      e: freezed == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$AuthApiException implements AuthApiException {
  _$AuthApiException({required this.code, this.e});

  @override
  final String code;
  @override
  final Object? e;

  @override
  String toString() {
    return 'AuthException.authApiException(code: $code, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthApiException &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthApiExceptionCopyWith<_$AuthApiException> get copyWith =>
      __$$AuthApiExceptionCopyWithImpl<_$AuthApiException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace stackTrace) unknown,
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() tooManyRequests,
    required TResult Function(String code, Object? e) authApiException,
  }) {
    return authApiException(code, e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace stackTrace)? unknown,
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function()? tooManyRequests,
    TResult? Function(String code, Object? e)? authApiException,
  }) {
    return authApiException?.call(code, e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace stackTrace)? unknown,
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? tooManyRequests,
    TResult Function(String code, Object? e)? authApiException,
    required TResult orElse(),
  }) {
    if (authApiException != null) {
      return authApiException(code, e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(WeakPassword value) weakPassword,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(WrongPassword value) wrongPassword,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(AuthApiException value) authApiException,
  }) {
    return authApiException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(WeakPassword value)? weakPassword,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(WrongPassword value)? wrongPassword,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(AuthApiException value)? authApiException,
  }) {
    return authApiException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(WeakPassword value)? weakPassword,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(WrongPassword value)? wrongPassword,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(AuthApiException value)? authApiException,
    required TResult orElse(),
  }) {
    if (authApiException != null) {
      return authApiException(this);
    }
    return orElse();
  }
}

abstract class AuthApiException implements AuthException {
  factory AuthApiException({required final String code, final Object? e}) =
      _$AuthApiException;

  String get code;
  Object? get e;
  @JsonKey(ignore: true)
  _$$AuthApiExceptionCopyWith<_$AuthApiException> get copyWith =>
      throw _privateConstructorUsedError;
}
