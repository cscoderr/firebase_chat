import 'package:firebase_chat/app/app.dart';
import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/chat/chat.dart';
import 'package:firebase_chat/features/home/presentation/cubit/home_cubit.dart';
import 'package:firebase_chat/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = context.select((AppBloc bloc) => bloc.state.user.id);
    return BlocProvider(
      create: (context) => HomeCubit(
        chatRepository: context.read<ChatRepository>(),
      )..getInboxes(userId ?? ''),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Inbox',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const Spacer(),
                  const Icon(
                    Iconsax.setting_4,
                    size: 35,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppTextBox(
                labelText: 'Search',
              ),
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return ChatList(
                  chats: state.users,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
