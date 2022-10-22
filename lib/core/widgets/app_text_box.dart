import 'package:flutter/material.dart';

class AppTextBox extends StatelessWidget {
  const AppTextBox({
    super.key,
    this.labelText,
    this.prefixIcon,
    this.onChanged,
  });

  final String? labelText;
  final Widget? prefixIcon;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        filled: false,
        prefixIcon: prefixIcon,
        border: const UnderlineInputBorder(),
      ),
    );
  }
}
