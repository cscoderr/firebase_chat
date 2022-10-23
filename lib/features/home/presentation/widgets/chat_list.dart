import 'package:firebase_chat/features/home/presentation/widgets/chat_list_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ChatListItem(
            isActive: index == 0,
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Gap(15),
      ),
    );
  }
}
