import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/chat/chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required ChatRepository chatRepository})
      : _chatRepository = chatRepository,
        super(const HomeState());

  StreamSubscription<List<UserModel>>? _inboxSubscription;
  final ChatRepository _chatRepository;

  Future<void> getInboxes(String userId) async {
    _inboxSubscription = _chatRepository.inboxes().listen((event) {
      emit(state.copyWith(users: event));
    });
  }

  @override
  Future<void> close() {
    _inboxSubscription?.cancel();
    return super.close();
  }
}
