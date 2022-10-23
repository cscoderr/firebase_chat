import 'package:firebase_chat/app/presentation/bloc/app_bloc.dart';
import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return BlocProvider(
      create: (context) =>
          ChatBloc(chatRepository: context.read<ChatRepository>())
            ..add(const GetMessages())
            ..add(UserChanged(user)),
      child: const ChatView(),
    );
  }
}

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      body: SafeArea(
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
                        Text(user.email ?? ''),
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
                          separatorBuilder: (BuildContext context, int index) =>
                              const Gap(15),
                          itemBuilder: (BuildContext context, int index) {
                            final currentMessage = state.messages[index];
                            return ChatBubble(
                              isMe: index.isEven,
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
                      labelText: 'Type a message',
                      onChanged: (value) =>
                          context.read<ChatBloc>().add(MessageChanged(value)),
                    ),
                  ),
                  IconButton(
                    onPressed: () =>
                        context.read<ChatBloc>().add(const SendMessage()),
                    icon: const Icon(Iconsax.send_1),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
