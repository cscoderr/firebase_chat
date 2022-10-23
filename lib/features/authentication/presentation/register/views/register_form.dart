import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        state.status.whenOrNull(
          success: () {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(
                  content: Text('Registration Successful'),
                ),
              );
            // _goToRegisterPage(context);
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
        children: [
          _buildRegisterTitle(context),
          const Gap(30),
          const _FullNameInput(),
          const Gap(30),
          const _UsernameInput(),
          const Gap(30),
          const _EmailInput(),
          const Gap(30),
          const _PasswordInput(),
          const Gap(30),
          const _ConfirmPasswordInput(),
          const Gap(50),
          const _SubmitButton(),
        ],
      ),
    );
  }

  Widget _buildRegisterTitle(BuildContext context) {
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
          'Welcome to Chatify,\nregister to get started',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}

class _FullNameInput extends StatelessWidget {
  const _FullNameInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.fullName != current.fullName,
      builder: (context, state) {
        return AppTextBox(
          labelText: 'Full Name',
          enabled:
              state.status.maybeWhen(loading: () => false, orElse: () => true),
          prefixIcon: const Icon(Iconsax.user),
          error: _fullNameValidator(state.fullName),
          onChanged: (value) => context.read<RegisterBloc>()
            ..add(
              FullNameChanged(value),
            )
            ..add(const RegisterValid()),
        );
      },
    );
  }

  String? _fullNameValidator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) {
      return 'Full Name is required';
    }
    return null;
  }
}

class _UsernameInput extends StatelessWidget {
  const _UsernameInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return AppTextBox(
          labelText: 'Username',
          enabled:
              state.status.maybeWhen(loading: () => false, orElse: () => true),
          prefixIcon: const Icon(Iconsax.user_add),
          error: _usernameValidator(state.username),
          onChanged: (value) => context.read<RegisterBloc>()
            ..add(
              UsernameChanged(value),
            )
            ..add(const RegisterValid()),
        );
      },
    );
  }

  String? _usernameValidator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) {
      return 'Username is required';
    }

    if (value.length < 6) {
      return 'Username must be at least 6';
    }
    return null;
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextBox(
          labelText: 'Email Address',
          enabled:
              state.status.maybeWhen(loading: () => false, orElse: () => true),
          prefixIcon: const Icon(Iconsax.sms),
          error: _emailValidator(state.email),
          onChanged: (value) => context.read<RegisterBloc>()
            ..add(
              RegisterEmailChanged(value),
            )
            ..add(const RegisterValid()),
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

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.isPasswordObsecure != current.isPasswordObsecure,
      builder: (context, state) {
        return AppTextBox(
          labelText: 'Password',
          prefixIcon: const Icon(Iconsax.lock_1),
          obscureText: state.isPasswordObsecure,
          enabled:
              state.status.maybeWhen(loading: () => false, orElse: () => true),
          suffixIcon: GestureDetector(
            onTap: () => context
                .read<RegisterBloc>()
                .add(const RegisterTogglePassword()),
            child: Icon(
              state.isPasswordObsecure ? Iconsax.eye_slash : Iconsax.eye,
            ),
          ),
          error: _passwordValidator(state.password),
          onChanged: (value) => context.read<RegisterBloc>()
            ..add(
              RegisterPasswordChanged(value),
            )
            ..add(const RegisterValid()),
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

class _ConfirmPasswordInput extends StatelessWidget {
  const _ConfirmPasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.confirmPassword != current.confirmPassword ||
          previous.isConfirmPasswordObsecure !=
              current.isConfirmPasswordObsecure,
      builder: (context, state) {
        return AppTextBox(
          labelText: 'Confirm Password',
          prefixIcon: const Icon(Iconsax.lock_1),
          obscureText: state.isConfirmPasswordObsecure,
          enabled:
              state.status.maybeWhen(loading: () => false, orElse: () => true),
          suffixIcon: GestureDetector(
            onTap: () => context
                .read<RegisterBloc>()
                .add(const RegisterToggleConfirmPassword()),
            child: Icon(
              state.isConfirmPasswordObsecure ? Iconsax.eye_slash : Iconsax.eye,
            ),
          ),
          error: _passwordValidator(state.confirmPassword, state.password),
          onChanged: (value) => context.read<RegisterBloc>()
            ..add(
              RegisterConfirmPasswordChanged(value),
            )
            ..add(const RegisterValid()),
        );
      },
    );
  }

  String? _passwordValidator(String? value, String? password) {
    if (value == null) return null;

    if (value.isEmpty) {
      return 'Confirm Password is required';
    }

    if (value != password) {
      return 'Password does not match';
    }
    return null;
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
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
                onPressed: !state.registerValid
                    ? null
                    : () => context.read<RegisterBloc>().add(
                          const RegisterSubmitted(),
                        ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'SIGN UP',
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
