import 'package:bloc/bloc.dart';
import 'package:firebase_chat/features/chat/chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required ChatRepository chatRepository})
      : _chatRepository = chatRepository,
        super(const HomeState.initial());

  final ChatRepository _chatRepository;

  void getMessages(String userId) {
    _chatRepository.inboxes(userId);
  }
}
