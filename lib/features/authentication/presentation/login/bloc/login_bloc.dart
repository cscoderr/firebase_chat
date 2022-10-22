import 'package:bloc/bloc.dart';
import 'package:firebase_chat/core/configs/app_status/app_status.dart';
import 'package:firebase_chat/core/core.dart';
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
    on<LoginEvent>((event, emit) {
      event.map(
        emailChanged: (event) => _onEmailChanged(event, emit),
        passwordChanged: (event) => _onPasswordChanged(event, emit),
        valid: (event) => _loginValid(event, emit),
        submitted: (event) => _onSubmitted(event, emit),
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

  void _loginValid(LoginValid event, _Emit emit) {
    if (state.email.isNotEmpty && state.password.isNotEmpty) {
      emit(state.copyWith(loginValid: true));
    } else {
      emit(state.copyWith(loginValid: true));
    }
  }

  Future<void> _onSubmitted(LoginSubmitted event, _Emit emit) async {
    try {
      print('enter');
      emit(state.copyWith(status: const AppStatus.loading()));
      await _authRepository.login(
        email: state.email,
        password: state.password,
      );
      emit(
        state.copyWith(
          status: const AppStatus.success(),
          // user: response,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: AppStatus.error(e.toString())));
    }
  }
}
