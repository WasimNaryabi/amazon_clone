import 'package:flutter/material.dart';

class PasswordInputField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String placeholder;
  const PasswordInputField(
      {super.key,
      required this.controller,
      required this.hint,
      required this.placeholder});

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.hint,
        hintText: widget.placeholder,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: _showPassword
              ? const Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                )
              : const Icon(
                  Icons.visibility,
                  color: Colors.grey,
                ),
          onPressed: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
        ),
      ),
      obscureText: _showPassword,
    );
  }
}
