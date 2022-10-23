import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/chat/chat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

typedef _Emit = Emitter<ChatState>;

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({required ChatRepository chatRepository})
      : _chatRepository = chatRepository,
        super(const ChatState()) {
    on<ChatEvent>((event, emit) async {
      await event.map(
        sendMessage: (event) async => _onSendMessage(event, emit),
      );
    });
  }

  final ChatRepository _chatRepository;

  Future<void> _onSendMessage(SendMessage event, _Emit emit) async {
    await _chatRepository.sendMessage(
      message: state.message,
      receiverId: state.receiverId,
    );
  }
}
