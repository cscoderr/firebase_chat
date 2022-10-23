import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthRepository>().user.first;
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
                  const Spacer(),
                  FutureBuilder<UserModel>(
                    future: user,
                    builder: (
                      BuildContext context,
                      AsyncSnapshot<UserModel> snapshot,
                    ) {
                      return Text(snapshot.data?.name ?? '');
                    },
                  ),
                  const Spacer(),
                  const Icon(Iconsax.search_normal_1),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 1,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Gap(15),
                  itemBuilder: (BuildContext context, int index) {
                    return const Text('');
                  },
                ),
              ),
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
