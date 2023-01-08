import 'dart:async';

import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
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
        messageChanged: (event) async => _onMessageChanged(event, emit),
        messagesChanged: (event) async => _onMessagesChanged(event, emit),
        getMessages: (event) async => _getMessages(event, emit),
        userChanged: (event) async => _onUserChanged(event, emit),
        receiverIdChanged: (event) async => _onReceiverIdChanged(event, emit),
      );
    });
  }

  final ChatRepository _chatRepository;
  late final StreamSubscription<List<Message>> _messagesSubscription;

  Future<void> _getMessages(GetMessages event, _Emit emit) async {
    emit(state.copyWith(status: const CommonStatus.loading()));
    _messagesSubscription = _chatRepository
        .getMessages(
      senderId: state.user.id ?? '',
      receiverId: state.receiverId,
    )
        .listen((messages) {
      if (messages.isNotEmpty) {
        add(ChatEvent.messagesChanged(messages));
      } else {
        add(const ChatEvent.messagesChanged([]));
      }
    });
  }

  void _onUserChanged(UserChanged event, _Emit emit) {
    emit(state.copyWith(user: event.user));
  }

  void _onReceiverIdChanged(ReceiverIdChanged event, _Emit emit) {
    emit(state.copyWith(receiverId: event.receiverId));
  }

  void _onMessageChanged(MessageChanged event, _Emit emit) {
    emit(state.copyWith(message: event.message));
  }

  void _onMessagesChanged(MessagesChanged event, _Emit emit) {
    emit(
      state.copyWith(
        messages: event.messages,
        status: const CommonStatus.success(),
      ),
    );
  }

  Future<void> _onSendMessage(SendMessage event, _Emit emit) async {
    try {
      await _chatRepository.sendMessage(
        message: state.message,
        receiverId: state.receiverId,
        user: state.user,
      );
      emit(state.copyWith(status: const CommonStatus.success()));
    } on ChatException catch (e) {
      emit(state.copyWith(status: CommonStatus.error(e.message)));
    }
  }

  @override
  Future<void> close() {
    _messagesSubscription.cancel();
    return super.close();
  }
}
