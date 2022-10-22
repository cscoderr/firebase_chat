import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(
              height: 30,
            ),
            const TextBox(
              labelText: 'Email Address',
              prefixIcon: Icon(Iconsax.user),
            ),
            const SizedBox(
              height: 30,
            ),
            const TextBox(
              labelText: 'Password',
              prefixIcon: Icon(Iconsax.lock_1),
            ),
            const SizedBox(
              height: 50,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: isLoading ? Curves.decelerate : Curves.bounceOut,
              width: isLoading ? 80 : MediaQuery.of(context).size.width - 40,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: isLoading
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          isLoading = !isLoading;
                        });
                      },
                      child: const Center(
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isLoading = !isLoading;
                        });
                      },
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
                    ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Forgot Password?'),
            const SizedBox(
              height: 20,
            ),
            RichText(
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
            ),
          ],
        ),
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({
    super.key,
    this.labelText,
    this.prefixIcon,
  });

  final String? labelText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        filled: false,
        prefixIcon: prefixIcon,
        border: const UnderlineInputBorder(),
      ),
    );
  }
}
