import 'package:firebase_chat/features/home/presentation/views/home_page.dart';
import 'package:firebase_chat/features/settings/settings.dart';
import 'package:firebase_chat/features/status/status.dart';
import 'package:firebase_chat/features/tab/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabCubit(),
      child: const TabView(),
    );
  }
}

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TabCubit>().state;
    return Scaffold(
      body: IndexedStack(
        index: state.tabIndex,
        children: const [
          StatusPage(),
          HomePage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: state.tabIndex,
        onTap: context.read<TabCubit>().onTabChanged,
        enableFeedback: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.setting),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.setting_2),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
