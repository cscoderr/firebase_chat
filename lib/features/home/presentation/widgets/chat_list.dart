import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/home/presentation/cubit/home_cubit.dart';
import 'package:firebase_chat/features/home/presentation/widgets/chat_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key, required this.chats});

  final List<UserModel> chats;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return ListView.separated(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              return ChatListItem(
                isActive: index == 0,
                user: chats[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Gap(15),
          );
        },
      ),
    );
  }
}
