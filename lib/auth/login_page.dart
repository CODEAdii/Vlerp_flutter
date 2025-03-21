import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginPageController> {
  final formKey = GlobalKey<FormState>();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", height: 40),
            const SizedBox(height: 60),
            // const Text(
            //   "Log in to your account",
            //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 20),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a username';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: controller.passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),

            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  controller.login();
                }
              },
              child: Text('Login'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: const Text("Don't have an account? Register"),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPageController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    //TODO: implement login
    Get.offAllNamed("/dashboard");
  }
}

class LoginPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginPageController>(LoginPageController());
  }
}
