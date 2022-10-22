import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLoginTitle(),
            const Gap(30),
            const _LoginEmail(),
            const Gap(30),
            const _LoginPassword(),
            const Gap(50),
            const _LoginButton(),
            const Gap(30),
            const Text('Forgot Password?'),
            const Gap(20),
            _buildGetStarted(),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginTitle() {
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

  Widget _buildGetStarted() {
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
      builder: (context, state) {
        return AppTextBox(
          labelText: 'Email Address',
          prefixIcon: const Icon(Iconsax.user),
          onChanged: (value) => context.read<LoginBloc>()
            ..add(
              EmailChanged(value),
            )
            ..add(const LoginValid()),
        );
      },
    );
  }
}

class _LoginPassword extends StatelessWidget {
  const _LoginPassword();

  @override
  Widget build(BuildContext context) {
    return AppTextBox(
      labelText: 'Password',
      prefixIcon: const Icon(Iconsax.lock_1),
      onChanged: (value) => context.read<LoginBloc>()
        ..add(
          PasswordChanged(value),
        )
        ..add(const LoginValid()),
    );
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
