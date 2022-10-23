import 'package:firebase_chat/features/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _goToChatPage(context),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: isActive ? Colors.grey : Colors.white,
        ),
        child: Row(
          children: [
            if (isActive)
              Container(
                width: 3,
                height: 35,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            const Gap(10),
            const CircleAvatar(
              radius: 30,
              child: Text('A'),
            ),
            const Gap(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tomiwa Idowu',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Hi tomiwa, how are you? there is an VGV Ventures...',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  'now',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const Chip(
                  label: Text('1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _goToChatPage(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const ChatPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      ),
    );
  }
}