// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitted,
    required TResult Function() valid,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitted,
    TResult? Function()? valid,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitted,
    TResult Function()? valid,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterSubmitted value) submitted,
    required TResult Function(RegisterValid value) valid,
    required TResult Function(RegisterTogglePassword value) togglePassword,
    required TResult Function(RegisterToggleConfirmPassword value)
        toggleConfirmPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegisterSubmitted value)? submitted,
    TResult? Function(RegisterValid value)? valid,
    TResult? Function(RegisterTogglePassword value)? togglePassword,
    TResult? Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegisterSubmitted value)? submitted,
    TResult Function(RegisterValid value)? valid,
    TResult Function(RegisterTogglePassword value)? togglePassword,
    TResult Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterEmailChangedCopyWith<$Res> {
  factory _$$RegisterEmailChangedCopyWith(_$RegisterEmailChanged value,
          $Res Function(_$RegisterEmailChanged) then) =
      __$$RegisterEmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RegisterEmailChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterEmailChanged>
    implements _$$RegisterEmailChangedCopyWith<$Res> {
  __$$RegisterEmailChangedCopyWithImpl(_$RegisterEmailChanged _value,
      $Res Function(_$RegisterEmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RegisterEmailChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterEmailChanged implements RegisterEmailChanged {
  const _$RegisterEmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterEmailChangedCopyWith<_$RegisterEmailChanged> get copyWith =>
      __$$RegisterEmailChangedCopyWithImpl<_$RegisterEmailChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitted,
    required TResult Function() valid,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmPassword,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitted,
    TResult? Function()? valid,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmPassword,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitted,
    TResult Function()? valid,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterSubmitted value) submitted,
    required TResult Function(RegisterValid value) valid,
    required TResult Function(RegisterTogglePassword value) togglePassword,
    required TResult Function(RegisterToggleConfirmPassword value)
        toggleConfirmPassword,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegisterSubmitted value)? submitted,
    TResult? Function(RegisterValid value)? valid,
    TResult? Function(RegisterTogglePassword value)? togglePassword,
    TResult? Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegisterSubmitted value)? submitted,
    TResult Function(RegisterValid value)? valid,
    TResult Function(RegisterTogglePassword value)? togglePassword,
    TResult Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterEmailChanged implements RegisterEvent {
  const factory RegisterEmailChanged(final String email) =
      _$RegisterEmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$RegisterEmailChangedCopyWith<_$RegisterEmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPasswordChangedCopyWith<$Res> {
  factory _$$RegisterPasswordChangedCopyWith(_$RegisterPasswordChanged value,
          $Res Function(_$RegisterPasswordChanged) then) =
      __$$RegisterPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$RegisterPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterPasswordChanged>
    implements _$$RegisterPasswordChangedCopyWith<$Res> {
  __$$RegisterPasswordChangedCopyWithImpl(_$RegisterPasswordChanged _value,
      $Res Function(_$RegisterPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$RegisterPasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterPasswordChanged implements RegisterPasswordChanged {
  const _$RegisterPasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPasswordChangedCopyWith<_$RegisterPasswordChanged> get copyWith =>
      __$$RegisterPasswordChangedCopyWithImpl<_$RegisterPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitted,
    required TResult Function() valid,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmPassword,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitted,
    TResult? Function()? valid,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmPassword,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitted,
    TResult Function()? valid,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterSubmitted value) submitted,
    required TResult Function(RegisterValid value) valid,
    required TResult Function(RegisterTogglePassword value) togglePassword,
    required TResult Function(RegisterToggleConfirmPassword value)
        toggleConfirmPassword,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegisterSubmitted value)? submitted,
    TResult? Function(RegisterValid value)? valid,
    TResult? Function(RegisterTogglePassword value)? togglePassword,
    TResult? Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegisterSubmitted value)? submitted,
    TResult Function(RegisterValid value)? valid,
    TResult Function(RegisterTogglePassword value)? togglePassword,
    TResult Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterPasswordChanged implements RegisterEvent {
  const factory RegisterPasswordChanged(final String password) =
      _$RegisterPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$RegisterPasswordChangedCopyWith<_$RegisterPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterConfirmPasswordChangedCopyWith<$Res> {
  factory _$$RegisterConfirmPasswordChangedCopyWith(
          _$RegisterConfirmPasswordChanged value,
          $Res Function(_$RegisterConfirmPasswordChanged) then) =
      __$$RegisterConfirmPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$RegisterConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterConfirmPasswordChanged>
    implements _$$RegisterConfirmPasswordChangedCopyWith<$Res> {
  __$$RegisterConfirmPasswordChangedCopyWithImpl(
      _$RegisterConfirmPasswordChanged _value,
      $Res Function(_$RegisterConfirmPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$RegisterConfirmPasswordChanged(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterConfirmPasswordChanged
    implements RegisterConfirmPasswordChanged {
  const _$RegisterConfirmPasswordChanged(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'RegisterEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterConfirmPasswordChanged &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterConfirmPasswordChangedCopyWith<_$RegisterConfirmPasswordChanged>
      get copyWith => __$$RegisterConfirmPasswordChangedCopyWithImpl<
          _$RegisterConfirmPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitted,
    required TResult Function() valid,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmPassword,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitted,
    TResult? Function()? valid,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmPassword,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitted,
    TResult Function()? valid,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterSubmitted value) submitted,
    required TResult Function(RegisterValid value) valid,
    required TResult Function(RegisterTogglePassword value) togglePassword,
    required TResult Function(RegisterToggleConfirmPassword value)
        toggleConfirmPassword,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegisterSubmitted value)? submitted,
    TResult? Function(RegisterValid value)? valid,
    TResult? Function(RegisterTogglePassword value)? togglePassword,
    TResult? Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegisterSubmitted value)? submitted,
    TResult Function(RegisterValid value)? valid,
    TResult Function(RegisterTogglePassword value)? togglePassword,
    TResult Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterConfirmPasswordChanged implements RegisterEvent {
  const factory RegisterConfirmPasswordChanged(final String confirmPassword) =
      _$RegisterConfirmPasswordChanged;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$RegisterConfirmPasswordChangedCopyWith<_$RegisterConfirmPasswordChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSubmittedCopyWith<$Res> {
  factory _$$RegisterSubmittedCopyWith(
          _$RegisterSubmitted value, $Res Function(_$RegisterSubmitted) then) =
      __$$RegisterSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterSubmittedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterSubmitted>
    implements _$$RegisterSubmittedCopyWith<$Res> {
  __$$RegisterSubmittedCopyWithImpl(
      _$RegisterSubmitted _value, $Res Function(_$RegisterSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterSubmitted implements RegisterSubmitted {
  const _$RegisterSubmitted();

  @override
  String toString() {
    return 'RegisterEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitted,
    required TResult Function() valid,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmPassword,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitted,
    TResult? Function()? valid,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmPassword,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitted,
    TResult Function()? valid,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterSubmitted value) submitted,
    required TResult Function(RegisterValid value) valid,
    required TResult Function(RegisterTogglePassword value) togglePassword,
    required TResult Function(RegisterToggleConfirmPassword value)
        toggleConfirmPassword,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegisterSubmitted value)? submitted,
    TResult? Function(RegisterValid value)? valid,
    TResult? Function(RegisterTogglePassword value)? togglePassword,
    TResult? Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegisterSubmitted value)? submitted,
    TResult Function(RegisterValid value)? valid,
    TResult Function(RegisterTogglePassword value)? togglePassword,
    TResult Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class RegisterSubmitted implements RegisterEvent {
  const factory RegisterSubmitted() = _$RegisterSubmitted;
}

/// @nodoc
abstract class _$$RegisterValidCopyWith<$Res> {
  factory _$$RegisterValidCopyWith(
          _$RegisterValid value, $Res Function(_$RegisterValid) then) =
      __$$RegisterValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterValidCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterValid>
    implements _$$RegisterValidCopyWith<$Res> {
  __$$RegisterValidCopyWithImpl(
      _$RegisterValid _value, $Res Function(_$RegisterValid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterValid implements RegisterValid {
  const _$RegisterValid();

  @override
  String toString() {
    return 'RegisterEvent.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterValid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitted,
    required TResult Function() valid,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmPassword,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitted,
    TResult? Function()? valid,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmPassword,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitted,
    TResult Function()? valid,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterSubmitted value) submitted,
    required TResult Function(RegisterValid value) valid,
    required TResult Function(RegisterTogglePassword value) togglePassword,
    required TResult Function(RegisterToggleConfirmPassword value)
        toggleConfirmPassword,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegisterSubmitted value)? submitted,
    TResult? Function(RegisterValid value)? valid,
    TResult? Function(RegisterTogglePassword value)? togglePassword,
    TResult? Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegisterSubmitted value)? submitted,
    TResult Function(RegisterValid value)? valid,
    TResult Function(RegisterTogglePassword value)? togglePassword,
    TResult Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class RegisterValid implements RegisterEvent {
  const factory RegisterValid() = _$RegisterValid;
}

/// @nodoc
abstract class _$$RegisterTogglePasswordCopyWith<$Res> {
  factory _$$RegisterTogglePasswordCopyWith(_$RegisterTogglePassword value,
          $Res Function(_$RegisterTogglePassword) then) =
      __$$RegisterTogglePasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterTogglePasswordCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterTogglePassword>
    implements _$$RegisterTogglePasswordCopyWith<$Res> {
  __$$RegisterTogglePasswordCopyWithImpl(_$RegisterTogglePassword _value,
      $Res Function(_$RegisterTogglePassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterTogglePassword implements RegisterTogglePassword {
  const _$RegisterTogglePassword();

  @override
  String toString() {
    return 'RegisterEvent.togglePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterTogglePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitted,
    required TResult Function() valid,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmPassword,
  }) {
    return togglePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitted,
    TResult? Function()? valid,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmPassword,
  }) {
    return togglePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitted,
    TResult Function()? valid,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (togglePassword != null) {
      return togglePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterSubmitted value) submitted,
    required TResult Function(RegisterValid value) valid,
    required TResult Function(RegisterTogglePassword value) togglePassword,
    required TResult Function(RegisterToggleConfirmPassword value)
        toggleConfirmPassword,
  }) {
    return togglePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegisterSubmitted value)? submitted,
    TResult? Function(RegisterValid value)? valid,
    TResult? Function(RegisterTogglePassword value)? togglePassword,
    TResult? Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
  }) {
    return togglePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegisterSubmitted value)? submitted,
    TResult Function(RegisterValid value)? valid,
    TResult Function(RegisterTogglePassword value)? togglePassword,
    TResult Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (togglePassword != null) {
      return togglePassword(this);
    }
    return orElse();
  }
}

abstract class RegisterTogglePassword implements RegisterEvent {
  const factory RegisterTogglePassword() = _$RegisterTogglePassword;
}

/// @nodoc
abstract class _$$RegisterToggleConfirmPasswordCopyWith<$Res> {
  factory _$$RegisterToggleConfirmPasswordCopyWith(
          _$RegisterToggleConfirmPassword value,
          $Res Function(_$RegisterToggleConfirmPassword) then) =
      __$$RegisterToggleConfirmPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterToggleConfirmPasswordCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterToggleConfirmPassword>
    implements _$$RegisterToggleConfirmPasswordCopyWith<$Res> {
  __$$RegisterToggleConfirmPasswordCopyWithImpl(
      _$RegisterToggleConfirmPassword _value,
      $Res Function(_$RegisterToggleConfirmPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterToggleConfirmPassword implements RegisterToggleConfirmPassword {
  const _$RegisterToggleConfirmPassword();

  @override
  String toString() {
    return 'RegisterEvent.toggleConfirmPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterToggleConfirmPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitted,
    required TResult Function() valid,
    required TResult Function() togglePassword,
    required TResult Function() toggleConfirmPassword,
  }) {
    return toggleConfirmPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitted,
    TResult? Function()? valid,
    TResult? Function()? togglePassword,
    TResult? Function()? toggleConfirmPassword,
  }) {
    return toggleConfirmPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitted,
    TResult Function()? valid,
    TResult Function()? togglePassword,
    TResult Function()? toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (toggleConfirmPassword != null) {
      return toggleConfirmPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterSubmitted value) submitted,
    required TResult Function(RegisterValid value) valid,
    required TResult Function(RegisterTogglePassword value) togglePassword,
    required TResult Function(RegisterToggleConfirmPassword value)
        toggleConfirmPassword,
  }) {
    return toggleConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegisterSubmitted value)? submitted,
    TResult? Function(RegisterValid value)? valid,
    TResult? Function(RegisterTogglePassword value)? togglePassword,
    TResult? Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
  }) {
    return toggleConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegisterSubmitted value)? submitted,
    TResult Function(RegisterValid value)? valid,
    TResult Function(RegisterTogglePassword value)? togglePassword,
    TResult Function(RegisterToggleConfirmPassword value)?
        toggleConfirmPassword,
    required TResult orElse(),
  }) {
    if (toggleConfirmPassword != null) {
      return toggleConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterToggleConfirmPassword implements RegisterEvent {
  const factory RegisterToggleConfirmPassword() =
      _$RegisterToggleConfirmPassword;
}

/// @nodoc
mixin _$RegisterState {
  CommonStatus get status => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;
  bool get isPasswordObsecure => throw _privateConstructorUsedError;
  bool get isConfirmPasswordObsecure => throw _privateConstructorUsedError;
  bool get registerValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {CommonStatus status,
      String? email,
      String? password,
      String? confirmPassword,
      bool isPasswordObsecure,
      bool isConfirmPasswordObsecure,
      bool registerValid});

  $CommonStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? isPasswordObsecure = null,
    Object? isConfirmPasswordObsecure = null,
    Object? registerValid = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommonStatus,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      isPasswordObsecure: null == isPasswordObsecure
          ? _value.isPasswordObsecure
          : isPasswordObsecure // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordObsecure: null == isConfirmPasswordObsecure
          ? _value.isConfirmPasswordObsecure
          : isConfirmPasswordObsecure // ignore: cast_nullable_to_non_nullable
              as bool,
      registerValid: null == registerValid
          ? _value.registerValid
          : registerValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommonStatusCopyWith<$Res> get status {
    return $CommonStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CommonStatus status,
      String? email,
      String? password,
      String? confirmPassword,
      bool isPasswordObsecure,
      bool isConfirmPasswordObsecure,
      bool registerValid});

  @override
  $CommonStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? isPasswordObsecure = null,
    Object? isConfirmPasswordObsecure = null,
    Object? registerValid = null,
  }) {
    return _then(_$_RegisterState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommonStatus,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      isPasswordObsecure: null == isPasswordObsecure
          ? _value.isPasswordObsecure
          : isPasswordObsecure // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordObsecure: null == isConfirmPasswordObsecure
          ? _value.isConfirmPasswordObsecure
          : isConfirmPasswordObsecure // ignore: cast_nullable_to_non_nullable
              as bool,
      registerValid: null == registerValid
          ? _value.registerValid
          : registerValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {this.status = const CommonStatus.initial(),
      this.email,
      this.password,
      this.confirmPassword,
      this.isPasswordObsecure = true,
      this.isConfirmPasswordObsecure = true,
      this.registerValid = false});

  @override
  @JsonKey()
  final CommonStatus status;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirmPassword;
  @override
  @JsonKey()
  final bool isPasswordObsecure;
  @override
  @JsonKey()
  final bool isConfirmPasswordObsecure;
  @override
  @JsonKey()
  final bool registerValid;

  @override
  String toString() {
    return 'RegisterState(status: $status, email: $email, password: $password, confirmPassword: $confirmPassword, isPasswordObsecure: $isPasswordObsecure, isConfirmPasswordObsecure: $isConfirmPasswordObsecure, registerValid: $registerValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isPasswordObsecure, isPasswordObsecure) ||
                other.isPasswordObsecure == isPasswordObsecure) &&
            (identical(other.isConfirmPasswordObsecure,
                    isConfirmPasswordObsecure) ||
                other.isConfirmPasswordObsecure == isConfirmPasswordObsecure) &&
            (identical(other.registerValid, registerValid) ||
                other.registerValid == registerValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      email,
      password,
      confirmPassword,
      isPasswordObsecure,
      isConfirmPasswordObsecure,
      registerValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final CommonStatus status,
      final String? email,
      final String? password,
      final String? confirmPassword,
      final bool isPasswordObsecure,
      final bool isConfirmPasswordObsecure,
      final bool registerValid}) = _$_RegisterState;

  @override
  CommonStatus get status;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get confirmPassword;
  @override
  bool get isPasswordObsecure;
  @override
  bool get isConfirmPasswordObsecure;
  @override
  bool get registerValid;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
