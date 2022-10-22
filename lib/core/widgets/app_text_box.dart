import 'package:flutter/material.dart';

class AppTextBox extends StatelessWidget {
  const AppTextBox({
    super.key,
    this.labelText,
    this.prefixIcon,
    this.onChanged,
    this.suffixIcon,
    this.error,
    this.obscureText = false,
    this.enabled = true,
  });

  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final bool enabled;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      enabled: enabled,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: error,
        filled: false,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: const UnderlineInputBorder(),
      ),
    );
  }
}
