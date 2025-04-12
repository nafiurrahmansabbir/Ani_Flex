import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign_in_screen.dart';
import 'home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _showPassword = false;

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
              Text("Sign Up", style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 20),
              _buildTextField(_usernameController, "Username"),
              _buildTextField(_fullNameController, "Full Name"),
              _buildTextField(_emailController, "E-mail", email: true),
              _buildPasswordField(_passwordController, "Password"),
              _buildPasswordField(_confirmPasswordController, "Confirm Password"),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Get.offAll(() => const HomeScreen());
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Thanks for signing up!')),
                    );
                  }
                },
                child: const Text("Sign Up"),
              ),
              TextButton(
                onPressed: () => Get.to(() => const SignInScreen()),
                child: const Text("Already have an account? Sign In"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hint, {bool email = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(hintText: hint),
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Enter your $hint';
          }
          if (email && !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
            return 'Enter a valid email';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildPasswordField(TextEditingController controller, String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        obscureText: !_showPassword,
        decoration: InputDecoration(
          hintText: hint,
          suffixIcon: IconButton(
            icon: Icon(_showPassword ? Icons.visibility : Icons.visibility_off),
            onPressed: () => setState(() => _showPassword = !_showPassword),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter your $hint';
          }
          return null;
        },
      ),
    );
  }
}
