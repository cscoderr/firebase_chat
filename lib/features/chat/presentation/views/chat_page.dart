import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/app/app.dart';
import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    final appUser = context.select((AppBloc bloc) => bloc.state.user);
    return BlocProvider(
      create: (context) =>
          ChatBloc(chatRepository: context.read<ChatRepository>())
            ..add(UserChanged(appUser))
            ..add(ReceiverIdChanged(user.id ?? ''))
            ..add(const GetMessages()),
      child: ChatView(
        user: user,
      ),
    );
  }
}

class ChatView extends StatefulWidget {
  const ChatView({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  late ScrollController _scrollController;
  late TextEditingController _messageController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _messageController = TextEditingController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: SafeArea(
        child: BlocListener<ChatBloc, ChatState>(
          listener: (context, state) {
            state.status.maybeWhen(
              orElse: () {},
              error: (error) => ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(error),
                    backgroundColor: Colors.red,
                  ),
                ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    InkResponse(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(Iconsax.arrow_left_2),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(widget.user.name ?? ''),
                        ],
                      ),
                    ),
                    const Icon(Iconsax.search_normal_1),
                  ],
                ),
                const Gap(20),
                Expanded(
                  child: BlocBuilder<ChatBloc, ChatState>(
                    builder: (context, state) {
                      return state.status.maybeWhen(
                        success: () {
                          return ListView.separated(
                            controller: _scrollController,
                            reverse: true,
                            itemCount: state.messages.length,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const Gap(15),
                            itemBuilder: (BuildContext context, int index) {
                              final currentMessage = state.messages[index];
                              return ChatBubble(
                                otherInitial:
                                    widget.user.name?.substring(0, 1) ?? '',
                                initial: state.user.name
                                        ?.substring(0, 1)
                                        .toUpperCase() ??
                                    '',
                                isMe: state.messages[index].senderId ==
                                    state.user.id,
                                message: currentMessage.message ?? '',
                              );
                            },
                          );
                        },
                        orElse: () => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      );
                    },
                  ),
                ),
                const Gap(20),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Iconsax.camera),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Iconsax.microphone),
                    ),
                    Expanded(
                      child: AppTextBox(
                        controller: _messageController,
                        labelText: 'Type a message',
                        onChanged: (value) =>
                            context.read<ChatBloc>().add(MessageChanged(value)),
                        onSubmit: () {
                          _messageController.clear();
                          context.read<ChatBloc>().add(const SendMessage());
                        },
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _messageController.clear();
                        context.read<ChatBloc>().add(const SendMessage());
                      },
                      icon: const Icon(Iconsax.send_1),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
