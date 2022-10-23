import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/chat/chat.dart';

abstract class ChatRepository {
  Future<void> sendMessage({
    required String message,
    required String receiverId,
    required UserModel user,
  });

  Stream<List<Message>> getMessages();

  Stream<List<UserModel>> inboxes(String userId);
}
