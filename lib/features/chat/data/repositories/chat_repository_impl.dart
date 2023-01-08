import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/features/authentication/data/models/user_model.dart';
import 'package:firebase_chat/features/chat/chat.dart';
import 'package:uuid/uuid.dart';

class ChatException implements Exception {
  ChatException(this.message);
  final String message;
  @override
  String toString() {
    return message;
  }
}

class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firebaseFirestore;
  @override
  Stream<List<Message>> getMessages({
    required String senderId,
    required String receiverId,
  }) {
    final docRef = _firebaseFirestore
        .collection('inbox')
        .doc(joinId(receiverId))
        .collection('messages')
        .orderBy('createdAt', descending: true);

    return docRef.snapshots().map((event) {
      final data = event.docs.map((e) => Message.fromJson(e.data())).toList();
      return data;
    });
  }

  String joinId(String receiverId) {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    final id = userId.compareTo(receiverId) > 0
        ? '$userId$receiverId'
        : '$receiverId$userId';
    return id;
  }

  @override
  Future<String> sendMessage({
    required String message,
    required String receiverId,
    required UserModel user,
  }) async {
    final data = {
      'id': const Uuid().v4(),
      'senderId': user.id,
      'receiverId': receiverId,
      'message': message,
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    };
    // await _firebaseFirestore.collection('inbox').add({
    //   'senderId': user.id,
    //   'receiverId': 'QqNK40RZ6jZXUTKh5A0ko2Ot6sd2',
    //   'createdAt': FieldValue.serverTimestamp(),
    // });

    await _firebaseFirestore
        .collection('inbox')
        .doc(joinId(receiverId))
        .collection('messages')
        .doc()
        .set(
          data,
        )
        .onError(
          (e, _) => throw ChatException(e.toString()),
        );
    return 'Message sent';
  }

  @override
  Stream<List<UserModel>> inboxes() {
    final docRef = _firebaseFirestore
        .collection('users')
        .where('uid', isNotEqualTo: FirebaseAuth.instance.currentUser!.uid);
    return docRef.snapshots().map((event) {
      // print(event.docs.first.data());
      final data = event.docs.map((e) => UserModel.fromJson(e.data())).toList();
      print(data);
      return data;
    });
  }
}
