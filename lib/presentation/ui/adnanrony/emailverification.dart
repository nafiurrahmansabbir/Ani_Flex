import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'otp_verification_screen.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Email Verification", style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(hintText: "E-mail Address"),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) return "Enter your email";
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) return "Enter a valid email";
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Get.to(() => const OtpVerificationScreen());
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("6-digit code sent to your email")),
                    );
                  }
                },
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
