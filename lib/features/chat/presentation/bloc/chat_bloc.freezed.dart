// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendMessage,
    required TResult Function(List<Message> messages) messagesChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() getMessages,
    required TResult Function(UserModel user) userChanged,
    required TResult Function(String receiverId) receiverIdChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendMessage,
    TResult? Function(List<Message> messages)? messagesChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? getMessages,
    TResult? Function(UserModel user)? userChanged,
    TResult? Function(String receiverId)? receiverIdChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendMessage,
    TResult Function(List<Message> messages)? messagesChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? getMessages,
    TResult Function(UserModel user)? userChanged,
    TResult Function(String receiverId)? receiverIdChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessagesChanged value) messagesChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(GetMessages value) getMessages,
    required TResult Function(UserChanged value) userChanged,
    required TResult Function(ReceiverIdChanged value) receiverIdChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessagesChanged value)? messagesChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(GetMessages value)? getMessages,
    TResult? Function(UserChanged value)? userChanged,
    TResult? Function(ReceiverIdChanged value)? receiverIdChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessagesChanged value)? messagesChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(GetMessages value)? getMessages,
    TResult Function(UserChanged value)? userChanged,
    TResult Function(ReceiverIdChanged value)? receiverIdChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendMessageCopyWith<$Res> {
  factory _$$SendMessageCopyWith(
          _$SendMessage value, $Res Function(_$SendMessage) then) =
      __$$SendMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessage>
    implements _$$SendMessageCopyWith<$Res> {
  __$$SendMessageCopyWithImpl(
      _$SendMessage _value, $Res Function(_$SendMessage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendMessage implements SendMessage {
  const _$SendMessage();

  @override
  String toString() {
    return 'ChatEvent.sendMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendMessage,
    required TResult Function(List<Message> messages) messagesChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() getMessages,
    required TResult Function(UserModel user) userChanged,
    required TResult Function(String receiverId) receiverIdChanged,
  }) {
    return sendMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendMessage,
    TResult? Function(List<Message> messages)? messagesChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? getMessages,
    TResult? Function(UserModel user)? userChanged,
    TResult? Function(String receiverId)? receiverIdChanged,
  }) {
    return sendMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendMessage,
    TResult Function(List<Message> messages)? messagesChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? getMessages,
    TResult Function(UserModel user)? userChanged,
    TResult Function(String receiverId)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessagesChanged value) messagesChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(GetMessages value) getMessages,
    required TResult Function(UserChanged value) userChanged,
    required TResult Function(ReceiverIdChanged value) receiverIdChanged,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessagesChanged value)? messagesChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(GetMessages value)? getMessages,
    TResult? Function(UserChanged value)? userChanged,
    TResult? Function(ReceiverIdChanged value)? receiverIdChanged,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessagesChanged value)? messagesChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(GetMessages value)? getMessages,
    TResult Function(UserChanged value)? userChanged,
    TResult Function(ReceiverIdChanged value)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements ChatEvent {
  const factory SendMessage() = _$SendMessage;
}

/// @nodoc
abstract class _$$MessagesChangedCopyWith<$Res> {
  factory _$$MessagesChangedCopyWith(
          _$MessagesChanged value, $Res Function(_$MessagesChanged) then) =
      __$$MessagesChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$MessagesChangedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessagesChanged>
    implements _$$MessagesChangedCopyWith<$Res> {
  __$$MessagesChangedCopyWithImpl(
      _$MessagesChanged _value, $Res Function(_$MessagesChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessagesChanged(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$MessagesChanged implements MessagesChanged {
  const _$MessagesChanged(final List<Message> messages) : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatEvent.messagesChanged(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesChanged &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesChangedCopyWith<_$MessagesChanged> get copyWith =>
      __$$MessagesChangedCopyWithImpl<_$MessagesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendMessage,
    required TResult Function(List<Message> messages) messagesChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() getMessages,
    required TResult Function(UserModel user) userChanged,
    required TResult Function(String receiverId) receiverIdChanged,
  }) {
    return messagesChanged(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendMessage,
    TResult? Function(List<Message> messages)? messagesChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? getMessages,
    TResult? Function(UserModel user)? userChanged,
    TResult? Function(String receiverId)? receiverIdChanged,
  }) {
    return messagesChanged?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendMessage,
    TResult Function(List<Message> messages)? messagesChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? getMessages,
    TResult Function(UserModel user)? userChanged,
    TResult Function(String receiverId)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (messagesChanged != null) {
      return messagesChanged(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessagesChanged value) messagesChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(GetMessages value) getMessages,
    required TResult Function(UserChanged value) userChanged,
    required TResult Function(ReceiverIdChanged value) receiverIdChanged,
  }) {
    return messagesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessagesChanged value)? messagesChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(GetMessages value)? getMessages,
    TResult? Function(UserChanged value)? userChanged,
    TResult? Function(ReceiverIdChanged value)? receiverIdChanged,
  }) {
    return messagesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessagesChanged value)? messagesChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(GetMessages value)? getMessages,
    TResult Function(UserChanged value)? userChanged,
    TResult Function(ReceiverIdChanged value)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (messagesChanged != null) {
      return messagesChanged(this);
    }
    return orElse();
  }
}

abstract class MessagesChanged implements ChatEvent {
  const factory MessagesChanged(final List<Message> messages) =
      _$MessagesChanged;

  List<Message> get messages;
  @JsonKey(ignore: true)
  _$$MessagesChangedCopyWith<_$MessagesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageChangedCopyWith<$Res> {
  factory _$$MessageChangedCopyWith(
          _$MessageChanged value, $Res Function(_$MessageChanged) then) =
      __$$MessageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessageChangedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessageChanged>
    implements _$$MessageChangedCopyWith<$Res> {
  __$$MessageChangedCopyWithImpl(
      _$MessageChanged _value, $Res Function(_$MessageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageChanged(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageChanged implements MessageChanged {
  const _$MessageChanged(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.messageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageChanged &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageChangedCopyWith<_$MessageChanged> get copyWith =>
      __$$MessageChangedCopyWithImpl<_$MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendMessage,
    required TResult Function(List<Message> messages) messagesChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() getMessages,
    required TResult Function(UserModel user) userChanged,
    required TResult Function(String receiverId) receiverIdChanged,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendMessage,
    TResult? Function(List<Message> messages)? messagesChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? getMessages,
    TResult? Function(UserModel user)? userChanged,
    TResult? Function(String receiverId)? receiverIdChanged,
  }) {
    return messageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendMessage,
    TResult Function(List<Message> messages)? messagesChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? getMessages,
    TResult Function(UserModel user)? userChanged,
    TResult Function(String receiverId)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessagesChanged value) messagesChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(GetMessages value) getMessages,
    required TResult Function(UserChanged value) userChanged,
    required TResult Function(ReceiverIdChanged value) receiverIdChanged,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessagesChanged value)? messagesChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(GetMessages value)? getMessages,
    TResult? Function(UserChanged value)? userChanged,
    TResult? Function(ReceiverIdChanged value)? receiverIdChanged,
  }) {
    return messageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessagesChanged value)? messagesChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(GetMessages value)? getMessages,
    TResult Function(UserChanged value)? userChanged,
    TResult Function(ReceiverIdChanged value)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class MessageChanged implements ChatEvent {
  const factory MessageChanged(final String message) = _$MessageChanged;

  String get message;
  @JsonKey(ignore: true)
  _$$MessageChangedCopyWith<_$MessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMessagesCopyWith<$Res> {
  factory _$$GetMessagesCopyWith(
          _$GetMessages value, $Res Function(_$GetMessages) then) =
      __$$GetMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMessagesCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetMessages>
    implements _$$GetMessagesCopyWith<$Res> {
  __$$GetMessagesCopyWithImpl(
      _$GetMessages _value, $Res Function(_$GetMessages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMessages implements GetMessages {
  const _$GetMessages();

  @override
  String toString() {
    return 'ChatEvent.getMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendMessage,
    required TResult Function(List<Message> messages) messagesChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() getMessages,
    required TResult Function(UserModel user) userChanged,
    required TResult Function(String receiverId) receiverIdChanged,
  }) {
    return getMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendMessage,
    TResult? Function(List<Message> messages)? messagesChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? getMessages,
    TResult? Function(UserModel user)? userChanged,
    TResult? Function(String receiverId)? receiverIdChanged,
  }) {
    return getMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendMessage,
    TResult Function(List<Message> messages)? messagesChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? getMessages,
    TResult Function(UserModel user)? userChanged,
    TResult Function(String receiverId)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessagesChanged value) messagesChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(GetMessages value) getMessages,
    required TResult Function(UserChanged value) userChanged,
    required TResult Function(ReceiverIdChanged value) receiverIdChanged,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessagesChanged value)? messagesChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(GetMessages value)? getMessages,
    TResult? Function(UserChanged value)? userChanged,
    TResult? Function(ReceiverIdChanged value)? receiverIdChanged,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessagesChanged value)? messagesChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(GetMessages value)? getMessages,
    TResult Function(UserChanged value)? userChanged,
    TResult Function(ReceiverIdChanged value)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class GetMessages implements ChatEvent {
  const factory GetMessages() = _$GetMessages;
}

/// @nodoc
abstract class _$$UserChangedCopyWith<$Res> {
  factory _$$UserChangedCopyWith(
          _$UserChanged value, $Res Function(_$UserChanged) then) =
      __$$UserChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$UserChangedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$UserChanged>
    implements _$$UserChangedCopyWith<$Res> {
  __$$UserChangedCopyWithImpl(
      _$UserChanged _value, $Res Function(_$UserChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserChanged(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$UserChanged implements UserChanged {
  const _$UserChanged(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ChatEvent.userChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserChanged &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserChangedCopyWith<_$UserChanged> get copyWith =>
      __$$UserChangedCopyWithImpl<_$UserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendMessage,
    required TResult Function(List<Message> messages) messagesChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() getMessages,
    required TResult Function(UserModel user) userChanged,
    required TResult Function(String receiverId) receiverIdChanged,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendMessage,
    TResult? Function(List<Message> messages)? messagesChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? getMessages,
    TResult? Function(UserModel user)? userChanged,
    TResult? Function(String receiverId)? receiverIdChanged,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendMessage,
    TResult Function(List<Message> messages)? messagesChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? getMessages,
    TResult Function(UserModel user)? userChanged,
    TResult Function(String receiverId)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessagesChanged value) messagesChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(GetMessages value) getMessages,
    required TResult Function(UserChanged value) userChanged,
    required TResult Function(ReceiverIdChanged value) receiverIdChanged,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessagesChanged value)? messagesChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(GetMessages value)? getMessages,
    TResult? Function(UserChanged value)? userChanged,
    TResult? Function(ReceiverIdChanged value)? receiverIdChanged,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessagesChanged value)? messagesChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(GetMessages value)? getMessages,
    TResult Function(UserChanged value)? userChanged,
    TResult Function(ReceiverIdChanged value)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class UserChanged implements ChatEvent {
  const factory UserChanged(final UserModel user) = _$UserChanged;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$UserChangedCopyWith<_$UserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiverIdChangedCopyWith<$Res> {
  factory _$$ReceiverIdChangedCopyWith(
          _$ReceiverIdChanged value, $Res Function(_$ReceiverIdChanged) then) =
      __$$ReceiverIdChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String receiverId});
}

/// @nodoc
class __$$ReceiverIdChangedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ReceiverIdChanged>
    implements _$$ReceiverIdChangedCopyWith<$Res> {
  __$$ReceiverIdChangedCopyWithImpl(
      _$ReceiverIdChanged _value, $Res Function(_$ReceiverIdChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
  }) {
    return _then(_$ReceiverIdChanged(
      null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReceiverIdChanged implements ReceiverIdChanged {
  const _$ReceiverIdChanged(this.receiverId);

  @override
  final String receiverId;

  @override
  String toString() {
    return 'ChatEvent.receiverIdChanged(receiverId: $receiverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiverIdChanged &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiverId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiverIdChangedCopyWith<_$ReceiverIdChanged> get copyWith =>
      __$$ReceiverIdChangedCopyWithImpl<_$ReceiverIdChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendMessage,
    required TResult Function(List<Message> messages) messagesChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() getMessages,
    required TResult Function(UserModel user) userChanged,
    required TResult Function(String receiverId) receiverIdChanged,
  }) {
    return receiverIdChanged(receiverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendMessage,
    TResult? Function(List<Message> messages)? messagesChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? getMessages,
    TResult? Function(UserModel user)? userChanged,
    TResult? Function(String receiverId)? receiverIdChanged,
  }) {
    return receiverIdChanged?.call(receiverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendMessage,
    TResult Function(List<Message> messages)? messagesChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? getMessages,
    TResult Function(UserModel user)? userChanged,
    TResult Function(String receiverId)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (receiverIdChanged != null) {
      return receiverIdChanged(receiverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessagesChanged value) messagesChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(GetMessages value) getMessages,
    required TResult Function(UserChanged value) userChanged,
    required TResult Function(ReceiverIdChanged value) receiverIdChanged,
  }) {
    return receiverIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessagesChanged value)? messagesChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(GetMessages value)? getMessages,
    TResult? Function(UserChanged value)? userChanged,
    TResult? Function(ReceiverIdChanged value)? receiverIdChanged,
  }) {
    return receiverIdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessagesChanged value)? messagesChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(GetMessages value)? getMessages,
    TResult Function(UserChanged value)? userChanged,
    TResult Function(ReceiverIdChanged value)? receiverIdChanged,
    required TResult orElse(),
  }) {
    if (receiverIdChanged != null) {
      return receiverIdChanged(this);
    }
    return orElse();
  }
}

abstract class ReceiverIdChanged implements ChatEvent {
  const factory ReceiverIdChanged(final String receiverId) =
      _$ReceiverIdChanged;

  String get receiverId;
  @JsonKey(ignore: true)
  _$$ReceiverIdChangedCopyWith<_$ReceiverIdChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  CommonStatus get status => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {CommonStatus status,
      List<Message> messages,
      String message,
      String receiverId,
      UserModel user});

  $CommonStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? messages = null,
    Object? message = null,
    Object? receiverId = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommonStatus,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommonStatusCopyWith<$Res> get status {
    return $CommonStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatStateCopyWith(
          _$_ChatState value, $Res Function(_$_ChatState) then) =
      __$$_ChatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CommonStatus status,
      List<Message> messages,
      String message,
      String receiverId,
      UserModel user});

  @override
  $CommonStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_ChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatState>
    implements _$$_ChatStateCopyWith<$Res> {
  __$$_ChatStateCopyWithImpl(
      _$_ChatState _value, $Res Function(_$_ChatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? messages = null,
    Object? message = null,
    Object? receiverId = null,
    Object? user = null,
  }) {
    return _then(_$_ChatState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommonStatus,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {this.status = const CommonStatus.initial(),
      final List<Message> messages = const [],
      this.message = '',
      this.receiverId = '',
      this.user = const UserModel()})
      : _messages = messages;

  @override
  @JsonKey()
  final CommonStatus status;
  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String receiverId;
  @override
  @JsonKey()
  final UserModel user;

  @override
  String toString() {
    return 'ChatState(status: $status, messages: $messages, message: $message, receiverId: $receiverId, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_messages),
      message,
      receiverId,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      __$$_ChatStateCopyWithImpl<_$_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final CommonStatus status,
      final List<Message> messages,
      final String message,
      final String receiverId,
      final UserModel user}) = _$_ChatState;

  @override
  CommonStatus get status;
  @override
  List<Message> get messages;
  @override
  String get message;
  @override
  String get receiverId;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
