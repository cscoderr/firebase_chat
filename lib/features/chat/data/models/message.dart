import 'package:equatable/equatable.dart';

class Message with EquatableMixin {
  Message({
    this.id,
    this.message,
    this.senderId,
    this.receiverId,
    this.timestamp,
  });

  final String? id;
  final String? senderId;
  final String? receiverId;
  final String? message;
  final String? timestamp;

  @override
  List<Object?> get props => [id, senderId, receiverId, message, timestamp];
}
