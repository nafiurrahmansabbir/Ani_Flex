import 'package:ani_flex/presentation/ui/screens/email_verification_screen.dart';
import 'package:ani_flex/presentation/ui/widgets/themeSnackBar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/assets_path.dart';
import '../widgets/app_logo_svg.dart';
import '../widgets/login_With_logo.dart';
import '../widgets/login_with_others.dart';
import 'home_screen.dart';
import 'signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isPasswordVisible = false;
  final TextEditingController _userTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  AppLogoSvg(logoWidth: 150),
                  Text(
                    'Welcome Back',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    'Login',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  _userNameTextField(),
                  const SizedBox(
                    height: 15,
                  ),
                  _passwordTextField(),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Get.offAll(() => HomeScreen());
                          themeSnackBar('Successful', 'Successfully Logged in');
                        }
                      },
                      child: Text('Login')),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Don\'t have any account  ',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                        children: [
                          TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(color: AppColors.themeColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(() => SignupScreen());
                                }),
                        ]),
                  ),
                  TextButton(onPressed: (){
                    Get.to(()=>EmailVerificationScreen());
                  }, child: Text('Forget Password')),
                  loginWithOthers(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget _passwordTextField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _passwordTEController,
      validator: (String? value) {
        if (value?.isEmpty ?? true) {
          return 'Enter your password';
        }
        return null;
      },
      obscureText: !_isPasswordVisible,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: AppColors.themeColor,
        ),
        hintText: "Password",
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
          icon: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: AppColors.themeColor,
          ),
        ),
      ),
    );
  }

  Widget _userNameTextField() {
    return TextFormField(
      controller: _userTEController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (String? value) {
        if (value?.trim().isEmpty ?? true) {
          return 'Enter e-mail or username';
        }
        return null;
      },
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.account_circle,
            color: AppColors.themeColor,
          ),
          hintText: 'E-mail / Username'),
    );
  }
}
