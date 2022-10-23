import 'package:firebase_chat/app/app.dart';
import 'package:firebase_chat/features/authentication/domain/repositories/auth_repository.dart';
import 'package:firebase_chat/features/chat/chat.dart';
import 'package:firebase_chat/features/welcome/view/welcome_page.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatifyApp extends StatelessWidget {
  const ChatifyApp({
    super.key,
    required this.authRepository,
    required this.chatRepository,
  });

  final AuthRepository authRepository;
  final ChatRepository chatRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>.value(value: authRepository),
        RepositoryProvider<ChatRepository>.value(value: chatRepository),
      ],
      child: BlocProvider(
        create: (context) => AppBloc(authRepository: authRepository),
        child: const _App(),
      ),
    );
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
