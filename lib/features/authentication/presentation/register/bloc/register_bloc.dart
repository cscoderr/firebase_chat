import 'package:bloc/bloc.dart';
import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/authentication/domain/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

typedef _Emit = Emitter<RegisterState>;

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const RegisterState()) {
    ///adding async and await is addressed here
    ///https://github.com/felangel/bloc/issues/2784
    on<RegisterEvent>((event, emit) async {
      await event.map(
        fullNameChanged: (event) async => _onFullNameChanged(event, emit),
        usernameChanged: (event) async => _onUsernameChanged(event, emit),
        emailChanged: (event) async => _onEmailChanged(event, emit),
        passwordChanged: (event) async => _onPasswordChanged(event, emit),
        confirmPasswordChanged: (event) async =>
            _onConfirmPasswordChanged(event, emit),
        togglePassword: (_) async => _onPasswordtoggle(emit),
        toggleConfirmPassword: (_) async => _onConfirmPasswordToggle(emit),
        submitted: (_) async => _onSubmitted(emit),
        valid: (_) async => _registerValid(emit),
      );
    });
  }

  final AuthRepository _authRepository;

  void _onFullNameChanged(FullNameChanged event, _Emit emit) {
    emit(state.copyWith(fullName: event.fullName));
  }

  void _onUsernameChanged(UsernameChanged event, _Emit emit) {
    emit(state.copyWith(username: event.username));
  }

  void _onEmailChanged(RegisterEmailChanged event, _Emit emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(RegisterPasswordChanged event, _Emit emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onConfirmPasswordChanged(
    RegisterConfirmPasswordChanged event,
    _Emit emit,
  ) {
    emit(state.copyWith(confirmPassword: event.confirmPassword));
  }

  void _registerValid(
    _Emit emit,
  ) {
    final emailReg = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );
    if ((state.email?.isNotEmpty ?? false) &&
        (state.password?.isNotEmpty ?? false) &&
        (state.confirmPassword?.isNotEmpty ?? false) &&
        (state.password == state.confirmPassword) &&
        (state.fullName?.isNotEmpty ?? false) &&
        (state.username?.isNotEmpty ?? false) &&
        emailReg.hasMatch(state.email ?? '')) {
      emit(state.copyWith(registerValid: true));
    } else {
      emit(state.copyWith(registerValid: false));
    }
  }

  void _onPasswordtoggle(_Emit emit) {
    print(state.isPasswordObsecure);
    emit(state.copyWith(isPasswordObsecure: !state.isPasswordObsecure));
  }

  void _onConfirmPasswordToggle(_Emit emit) {
    emit(
      state.copyWith(
        isConfirmPasswordObsecure: !state.isConfirmPasswordObsecure,
      ),
    );
  }

  Future<void> _onSubmitted(_Emit emit) async {
    try {
      emit(state.copyWith(status: const CommonStatus.loading()));
      await _authRepository.register(
        fullName: state.fullName!,
        username: state.username!,
        email: state.email!,
        password: state.password!,
      );
      emit(
        state.copyWith(
          status: const CommonStatus.success(),
        ),
      );
    } on AuthException catch (e) {
      emit(state.copyWith(status: CommonStatus.error(e.message)));
    }
  }
}
