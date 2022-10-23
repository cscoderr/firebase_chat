import 'dart:async';

import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

typedef _Emit = Emitter<AppState>;

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AppState()) {
    _streamSubscription = _authRepository.user.listen((user) {
      add(AppEvent.userChanged(user));
    });
    on<AppEvent>((event, emit) {
      event.map(
        userChanged: (event) => _onAppUserChanged(event, emit),
        logout: (event) => _onLogout(event, emit),
      );
    });
  }

  final AuthRepository _authRepository;
  late StreamSubscription<UserModel> _streamSubscription;

  void _onAppUserChanged(AppUserChanged event, _Emit emit) {
    emit(state.copyWith(user: event.user));
  }

  void _onLogout(AppLogout event, _Emit emit) {
    _authRepository.logout();
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
