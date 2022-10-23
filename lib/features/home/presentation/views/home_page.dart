import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            const ChatList(),
          ],
        ),
      ),
    );
  }
}
