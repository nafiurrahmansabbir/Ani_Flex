import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_bottom_nav_screen.dart';
import 'signup_screen.dart';
import 'email_verification_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _userController = TextEditingController();
  final _passController = TextEditingController();
  bool _showPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login", style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 20),
              TextFormField(
                controller: _userController,
                decoration: const InputDecoration(hintText: 'Email/Username'),
                validator: (v) => v!.isEmpty ? 'Enter username' : null,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _passController,
                obscureText: !_showPass,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(_showPass ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => setState(() => _showPass = !_showPass),
                  ),
                ),
                validator: (v) => v!.isEmpty ? 'Enter password' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Get.offAll(() => const MainBottomNavScreen());
                  }
                },
                child: const Text("Login"),
              ),
              TextButton(
                onPressed: () => Get.to(() => const EmailVerificationScreen()),
                child: const Text('Forgot Password?'),
              ),
              TextButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text("Don't have an account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
