import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: BlocProvider(
            create: (context) => RegisterBloc(
              authRepository: context.read<AuthRepository>(),
            ),
            child: const SingleChildScrollView(
              child: RegisterForm(),
            ),
          ),
        ),
      ),
    );
  }
}
