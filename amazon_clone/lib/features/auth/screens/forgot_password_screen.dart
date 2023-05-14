import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_input_field.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String routeName = '/forgot-password-screen';
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

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
                'Reset password',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: FormInputField(
                  controller: _emailController,
                  hint: "Email",
                  placeholder: "Enter your email"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: CommonButton(
                buttonText: "Reset Password",
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
