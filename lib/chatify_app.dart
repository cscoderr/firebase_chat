import 'package:firebase_chat/features/welcome/view/welcome_page.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ChatifyApp extends StatelessWidget {
  const ChatifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const _App();
  }
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        scheme: FlexScheme.blueWhale,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.blueWhale,
      ),
      home: const WelcomePage(),
    );
  }
}
