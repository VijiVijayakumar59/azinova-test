import 'package:azinovatest/view/home_screen.dart';
import 'package:flutter/material.dart';

class AuthController {
  final BuildContext context;

  AuthController({required this.context});

  void login({required String userName, required String password}) {
    String user = 'admin';
    String passwordCore = 'admin';

    if (userName == user && password == passwordCore) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else if (userName == user && password != passwordCore) {
      showSnackbar('Oops', 'Your password is incorrect');
    } else if (userName != user) {
      showSnackbar('Oops', 'User name is incorrect');
    } else {
      showSnackbar('Oops', 'User not found');
    }
  }

  void showSnackbar(String title, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
