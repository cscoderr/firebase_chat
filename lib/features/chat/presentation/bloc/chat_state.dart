part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default(CommonStatus.initial()) CommonStatus status,
    @Default([]) List<Message> messages,
    @Default('') String message,
    @Default('') String receiverId,
    @Default(UserModel()) UserModel user,
  }) = _ChatState;
}
