part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage() = SendMessage;
  const factory ChatEvent.messagesChanged(List<Message> messages) =
      MessagesChanged;
  const factory ChatEvent.messageChanged(String message) = MessageChanged;

  const factory ChatEvent.getMessages() = GetMessages;
  const factory ChatEvent.userChanged(UserModel user) = UserChanged;
  const factory ChatEvent.receiverIdChanged(String receiverId) =
      ReceiverIdChanged;
}
