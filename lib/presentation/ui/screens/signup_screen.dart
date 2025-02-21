
import 'package:ani_flex/presentation/ui/screens/sign_in_screen.dart';
import 'package:ani_flex/presentation/ui/widgets/themeSnackBar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/app_constants.dart';
import '../utils/assets_path.dart';
import '../widgets/app_logo_svg.dart';
import '../widgets/login_With_logo.dart';
import '../widgets/login_with_others.dart';
import 'home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isPasswordVisible = false;
  final TextEditingController _confirmPasswordTEController =
      TextEditingController();
  final TextEditingController _usernameTEController = TextEditingController();
  final TextEditingController _fullNameTEController = TextEditingController();
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
                    'Sign Up',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    'Create your account',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _usernameTEController,
                    decoration: InputDecoration(hintText: 'User Name'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Enter your username';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _fullNameTEController,
                    decoration: InputDecoration(hintText: 'Full Name'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Enter your full name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'E-mail'),
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _passwordTextField(),
                  SizedBox(
                    height: 10,
                  ),
                  _confirmPasswordTextField(),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Get.offAll(() => HomeScreen());
                          themeSnackBar('Successful', 'Thanks for sing up');
                        }
                      },
                      child: Text('Sing Up')),
                  RichText(
                    text: TextSpan(
                        text: 'Already have  account  ',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                        children: [
                          TextSpan(
                              text: 'Sign In',
                              style: TextStyle(color: AppColors.themeColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.to(() => SignInScreen());
                                }),
                        ]),
                  ),
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

  Widget _confirmPasswordTextField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _confirmPasswordTEController,
      validator: (String? value) {
        if (value?.isEmpty ?? true) {
          return 'Confirmed password';
        }
        return null;
      },
      obscureText: !_isPasswordVisible,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: AppColors.themeColor,
        ),
        hintText: "Confirm Password",
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
}
