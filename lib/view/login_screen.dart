import 'package:azinovatest/constants/constant_height.dart';
import 'package:azinovatest/view/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  // void login() {
  //   if (usernameController.text == 'admin' && passwordController.text == 'admin') {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => const HomeScreen()),
  //     );
  //   } else {
  //     const SnackBar(
  //       content: Text("username or password is invalid"),
  //       duration: Duration(seconds: 2),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 127, 7, 149),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const KHeight(size: 0.03),
              TextFormField(
                controller: usernameController,
                validator: (value) {
                  if (value != "admin") {
                    return "Invalid username";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(14),
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const KHeight(size: 0.02),
              TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value != "admin") {
                    return "Invalid password";
                  } else {
                    return null;
                  }
                },
                obscureText: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(14),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const KHeight(size: 0.03),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    } else {
                      const SnackBar(
                        content: Text("username or password is invalid"),
                        duration: Duration(seconds: 2),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
