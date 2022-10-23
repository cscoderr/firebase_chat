import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message with EquatableMixin {
  Message({
    this.id,
    this.message,
    this.senderId,
    this.receiverId,
    this.timestamp,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  final String? id;
  final String? senderId;
  final String? receiverId;
  final String? message;
  final String? timestamp;

  @override
  List<Object?> get props => [id, senderId, receiverId, message, timestamp];
}
