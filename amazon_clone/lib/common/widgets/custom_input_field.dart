import 'package:flutter/material.dart';

class FormInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String placeholder;
  const FormInputField(
      {super.key,
      required this.controller,
      required this.hint,
      required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: hint,
        hintText: placeholder,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
