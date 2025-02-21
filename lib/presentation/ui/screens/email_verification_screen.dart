
import 'package:ani_flex/presentation/ui/widgets/themeSnackBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_constants.dart';
import '../widgets/app_logo_svg.dart';
import 'otp_verification_screen.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 120),
                AppLogoSvg(logoWidth: 120),
                Text(
                  'Welcome Back',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'Please Enter Your Email',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _emailTEController,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter a your email';
                    }
                    if (AppConstants.emailRegExp.hasMatch(value!) == false) {
                      return 'Enter a valid E-mail';
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: 'E-mail Address'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //active
                      Get.to(()=>OtpVerificationScreen());
                      themeSnackBar('Sending', '6 digit code send on your E-mail');
                    }
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
