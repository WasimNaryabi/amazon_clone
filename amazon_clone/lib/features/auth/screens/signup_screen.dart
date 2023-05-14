import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_input_field.dart';
import 'package:amazon_clone/common/widgets/custom_password_field.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/signup-screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 80, left: 30),
              child: const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: FormInputField(
                  controller: _nameController,
                  hint: "Name",
                  placeholder: "Enter your name"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: FormInputField(
                  controller: _emailController,
                  hint: "Email",
                  placeholder: "Enter your email"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: PasswordInputField(
                  controller: _passwordController,
                  hint: "Password",
                  placeholder: "Enter your password"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: PasswordInputField(
                  controller: _confirmPasswordController,
                  hint: "Confirm Password",
                  placeholder: "Confirm your password"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: CommonButton(
                buttonText: "Signup",
                onTap: () {},
                color: GlobalVariables.primeryColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: CommonButton(
                buttonText: "Back to Login",
                onTap: () {},
                color: GlobalVariables.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
