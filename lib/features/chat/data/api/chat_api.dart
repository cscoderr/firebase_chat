import 'package:firebase_chat/features/chat/chat.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class ChatApi {
  Future<void> sendMessage({
    required String message,
    required String receiverId,
  });

  Stream<List<Message>> getMessages();
}

class ChatApiImpl implements ChatApi {
  ChatApiImpl({FirebaseDatabase? firebaseDatabase})
      : _firebaseDatabase = firebaseDatabase ?? FirebaseDatabase.instance;

  final FirebaseDatabase _firebaseDatabase;
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
    final ref = _firebaseDatabase.ref('user');
    await ref.set({
      'name': 'John Doe',
      'age': 42,
    });
  }
}
