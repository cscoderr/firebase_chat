import 'package:firebase_chat/app/presentation/views/chatify_app.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/chat/chat.dart';
import 'package:firebase_chat/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChatifyApp(
      authRepository: AuthRepositoryImpl(),
      chatRepository: ChatRepositoryImpl(),
    ),
  );
}
