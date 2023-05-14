import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_input_field.dart';
import 'package:amazon_clone/common/widgets/custom_password_field.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;
  bool _showPassword = true;

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
                'Welcome Back',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: FormInputField(
                    controller: _emailController,
                    hint: "Email",
                    placeholder: "Enter your password")),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: PasswordInputField(
                  controller: _passwordController,
                  hint: "Password",
                  placeholder: "Enter your password"),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 30),
                  child: Row(
                    children: <Widget>[
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value!;
                          });
                        },
                      ),
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 25),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: CommonButton(
                buttonText: "Login",
                onTap: () {},
                color: GlobalVariables.primeryColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: CommonButton(
                buttonText: "Signup",
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
