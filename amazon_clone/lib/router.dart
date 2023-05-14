import 'package:amazon_clone/features/auth/screens/forgot_password_screen.dart';
import 'package:amazon_clone/features/auth/screens/login_screen.dart';
import 'package:amazon_clone/features/auth/screens/signup_screen.dart';
import 'package:amazon_clone/features/home/screens/home_screen.dart';
import 'package:amazon_clone/features/shop/screens/shop_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const LoginScreen());
    case SignUpScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const SignUpScreen());
    case ForgotPasswordScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const ForgotPasswordScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const HomeScreen());
    case ShopScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const ShopScreen());
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Text("The screen not found"),
        ),
      );
  }
}
