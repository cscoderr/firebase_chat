import 'package:flutter/material.dart';

class AppTextBox extends StatelessWidget {
  const AppTextBox({
    super.key,
    this.controller,
    this.labelText,
    this.prefixIcon,
    this.onChanged,
    this.suffixIcon,
    this.error,
    this.obscureText = false,
    this.enabled = true,
    this.onSubmit,
  });

  final TextEditingController? controller;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onSubmit;
  final bool obscureText;
  final bool enabled;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      enabled: enabled,
      controller: controller,
      obscureText: obscureText,
      onSubmitted: (_) => onSubmit?.call(),
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
