import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/chat/chat.dart';

abstract class ChatRepository {
  Future<String> sendMessage({
    required String message,
    required String receiverId,
    required UserModel user,
  });

  Stream<List<Message>> getMessages({
    required String senderId,
    required String receiverId,
  });

  Stream<List<UserModel>> inboxes();
}
