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
    return BlocProvider(
      create: (context) =>
          ChatBloc(chatRepository: context.read<ChatRepository>()),
      child: const ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({super.key});

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
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Gap(15),
                  itemBuilder: (BuildContext context, int index) {
                    return ChatBubble(
                      isMe: index.isEven,
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
                  const Expanded(
                    child: AppTextBox(
                      labelText: 'Type a message',
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
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
