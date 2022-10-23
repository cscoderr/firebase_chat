import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:firebase_chat/features/tab/tab.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        state.status.whenOrNull(
          success: () {
            _goToHomePage(context);
          },
          error: (error) => ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(error),
                backgroundColor: Colors.red,
              ),
            ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLoginTitle(context),
          const Gap(30),
          const _LoginEmail(),
          const Gap(30),
          const _LoginPassword(),
          const Gap(50),
          const _LoginButton(),
          const Gap(30),
          const Text('Forgot Password?'),
          const Gap(20),
          _buildGetStarted(context),
        ],
      ),
    );
  }

  void _goToRegisterPage(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const RegisterPage(),
        transitionDuration: const Duration(milliseconds: 400),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      ),
    );
  }

  void _goToHomePage(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const TabPage(),
        transitionDuration: const Duration(milliseconds: 400),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: child,
          );
        },
      ),
    );
  }

  Widget _buildLoginTitle(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Transform.rotate(
            angle: -0.5,
            child: const Icon(
              Iconsax.message,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          'Welcome to Chatify,\nlogin to continue',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }

  Widget _buildGetStarted(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Don't have an account yet? ",
        style: Theme.of(context).textTheme.bodyText1!.copyWith(),
        children: [
          TextSpan(
            text: 'Get started',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w700,
                ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => _goToRegisterPage(context),
          ),
        ],
      ),
    );
  }
}

class _LoginEmail extends StatelessWidget {
  const _LoginEmail();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextBox(
          labelText: 'Email Address',
          enabled:
              state.status.maybeWhen(loading: () => false, orElse: () => true),
          prefixIcon: const Icon(Iconsax.user),
          error: _emailValidator(state.email),
          onChanged: (value) => context.read<LoginBloc>()
            ..add(
              EmailChanged(value),
            )
            ..add(const LoginValid()),
        );
      },
    );
  }

  String? _emailValidator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) {
      return 'Email is required';
    }

    final emailReg = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );
    if (!emailReg.hasMatch(value)) {
      return 'Invalid Email';
    }
    return null;
  }
}

class _LoginPassword extends StatelessWidget {
  const _LoginPassword();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.isObsecure != current.isObsecure,
      builder: (context, state) {
        return AppTextBox(
          labelText: 'Password',
          prefixIcon: const Icon(Iconsax.lock_1),
          obscureText: state.isObsecure,
          enabled:
              state.status.maybeWhen(loading: () => false, orElse: () => true),
          suffixIcon: GestureDetector(
            onTap: () => context.read<LoginBloc>().add(const TogglePassword()),
            child: Icon(
              state.isObsecure ? Iconsax.eye_slash : Iconsax.eye,
            ),
          ),
          error: _passwordValidator(state.password),
          onChanged: (value) => context.read<LoginBloc>()
            ..add(
              PasswordChanged(value),
            )
            ..add(const LoginValid()),
        );
      },
    );
  }

  String? _passwordValidator(String? value) {
    if (value == null) return null;

    if (value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6';
    }
    return null;
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: state.status.maybeWhen(
            orElse: () => Curves.decelerate,
            loading: () => Curves.bounceOut,
          ),
          width: state.status.maybeWhen(
            orElse: () => MediaQuery.of(context).size.width - 40,
            loading: () => 80,
          ),
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: state.status.maybeWhen(
            orElse: () {
              return ElevatedButton(
                onPressed: !state.loginValid
                    ? null
                    : () => context.read<LoginBloc>().add(
                          const LoginSubmitted(),
                        ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'SIGN IN',
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: Colors.white,
                      ),
                ),
              );
            },
            loading: () {
              return const Center(
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
