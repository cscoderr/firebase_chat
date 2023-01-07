import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/features/authentication/data/models/user_model.dart';
import 'package:firebase_chat/features/chat/chat.dart';
import 'package:uuid/uuid.dart';

class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firebaseFirestore;
  @override
  Stream<List<Message>> getMessages() {
    final docRef = _firebaseFirestore
        .collection('users')
        .orderBy('createdAt', descending: true);
    return docRef.snapshots().map((event) {
      final data = event.docs.map((e) => Message.fromJson(e.data())).toList();
      return data;
    });
  }

  @override
  Future<void> sendMessage({
    required String message,
    required String receiverId,
    required UserModel user,
  }) async {
    final data = {
      'id': const Uuid().v4(),
      'senderId': user.id,
      'receiverId': const Uuid().v4(),
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
        .collection('inbox/B7fzYUoDmG4WsdJFR4B2/messages')
        .doc()
        .set(
          data,
        )
        .onError((e, _) => print('Error writing document: $e'));
  }

  @override
  Stream<List<UserModel>> inboxes(String userId) {
    print(FirebaseAuth.instance.currentUser!.uid);
    final docRef = _firebaseFirestore.collection('users');
    // .where('receiverId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
    // .where('senderId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
    // .orderBy('createdAt', descending: true);
    return docRef.snapshots().map((event) {
      // print(event.docs.first.data());
      final data = event.docs.map((e) => UserModel.fromJson(e.data())).toList();
      print(data);
      return data;
    });
  }
}
