import 'package:firebase_chat/features/chat/chat.dart';

abstract class ChatRepository {
  Future<void> sendMessage({
    required String message,
    required String receiverId,
  });

  Stream<List<Message>> getMessages();
}
