import 'package:bloc/bloc.dart';
import 'package:firebase_chat/core/configs/app_status/app_status.dart';
import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/authentication/domain/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

typedef _Emit = Emitter<LoginState>;

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const LoginState()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        emailChanged: (event) async => _onEmailChanged(event, emit),
        passwordChanged: (event) async => _onPasswordChanged(event, emit),
        valid: (event) async => _loginValid(event, emit),
        toogle: (_) async => _onPasswordToggle(emit),
        submitted: (_) async => _onSubmitted(emit),
      );
    });
  }

  final AuthRepository _authRepository;

  void _onEmailChanged(EmailChanged event, _Emit emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, _Emit emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onPasswordToggle(_Emit emit) {
    emit(state.copyWith(isObsecure: !state.isObsecure));
  }

  void _loginValid(LoginValid event, _Emit emit) {
    final emailReg = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );
    if ((state.email?.isNotEmpty ?? false) &&
        (state.password?.isNotEmpty ?? false) &&
        emailReg.hasMatch(state.email ?? '')) {
      emit(state.copyWith(loginValid: true));
    } else {
      emit(state.copyWith(loginValid: false));
    }
  }

  Future<void> _onSubmitted(_Emit emit) async {
    try {
      emit(state.copyWith(status: const AppStatus.loading()));
      await _authRepository.login(
        email: state.email!,
        password: state.password!,
      );
      emit(
        state.copyWith(
          status: const AppStatus.success(),
        ),
      );
    } on AuthException catch (e) {
      emit(state.copyWith(status: AppStatus.error(e.message)));
    }
  }
}
