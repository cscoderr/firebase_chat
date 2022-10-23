import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
    this.isMe = false,
  });

  final bool isMe;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isMe)
          const CircleAvatar(
            radius: 20,
            child: Text('A'),
          ),
        const Gap(10),
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
              color: isMe ? Theme.of(context).primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: isMe ? Colors.white : Colors.black,
                  ),
            ),
          ),
        ),
        const Gap(10),
        if (isMe)
          const CircleAvatar(
            radius: 20,
            child: Text('A'),
          ),
      ],
    );
  }
}
