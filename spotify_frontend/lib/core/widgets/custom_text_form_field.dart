import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      obscureText: obscureText,
      validator: (String? value) {
        if (value == null || value.trim().isEmpty) {
          return "$hintText is missing!";
        }
        return null;
      },
    );
  }
}
