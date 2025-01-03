// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    super.key, required this. controller,
    required this. label,
    bool obscureText = false,
  });
  final TextEditingController controller;
  final  String label;
  final bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      obscureText: obscureText,
    );
  }
}