import 'package:firebase_chat/features/chat/chat.dart';

class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl({
    ChatApi? chatApi,
  }) : _chatApi = chatApi ?? ChatApiImpl();
  final ChatApi _chatApi;
  @override
  Stream<List<Message>> getMessages() {
    // TODO: implement getMessages
    throw UnimplementedError();
  }

  @override
  Future<void> sendMessage({
    required String message,
    required String receiverId,
  }) async {
    await _chatApi.sendMessage(message: message, receiverId: receiverId);
  }
}
