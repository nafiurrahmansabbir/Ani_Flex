import 'package:ani_flex/presentation/ui/screens/sign_in_screen.dart';
import 'package:ani_flex/presentation/ui/widgets/themeSnackBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/app_constants.dart';

import '../widgets/app_logo_svg.dart';
import '../widgets/error_snackbar.dart';

import '../widgets/login_with_others.dart';
import 'main_bottom_nav_screen/main_bottom_nav_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _confirmPasswordTEController =
      TextEditingController();
  final TextEditingController _usernameTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _fullNameTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _signUpInProgress = false;
  bool _isPasswordVisibleIcon = false;
  bool _isPasswordVisible = false;

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
                    controller: _emailTEController,
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
                  Visibility(
                    visible: _signUpInProgress == false,
                    replacement: const Center(
                      child: CircularProgressIndicator(),
                    ),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _signUp();
                          }
                        },
                        child: Text('Sing Up')),
                  ),
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
      obscureText: !_isPasswordVisibleIcon,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: AppColors.themeColor,
        ),
        hintText: "Password",
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isPasswordVisibleIcon = !_isPasswordVisibleIcon;
            });
          },
          icon: Icon(
            _isPasswordVisibleIcon ? Icons.visibility : Icons.visibility_off,
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
      obscureText: !_isPasswordVisibleIcon,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: AppColors.themeColor,
        ),
        hintText: "Confirm Password",
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isPasswordVisibleIcon = !_isPasswordVisibleIcon;
            });
          },
          icon: Icon(
            _isPasswordVisibleIcon ? Icons.visibility : Icons.visibility_off,
            color: AppColors.themeColor,
          ),
        ),
      ),
    );
  }

  Future<void> _signUp() async {
    setState(() {
      _signUpInProgress = true;
    });

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    var userName = _usernameTEController.text.trim();
    var fullName = _fullNameTEController.text.trim();
    var userEmail = _emailTEController.text.trim();
    var userPassword = _passwordTEController.text;

    try {
      // Create the user
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: userEmail, password: userPassword);

      // Fetch the current user (newly created)
      User? newUser = userCredential.user;

      if (newUser != null) {
        // Save user data to Firestore
        await FirebaseFirestore.instance
            .collection('users')
            .doc(newUser.uid)
            .set({
          'userName': userName,
          'userFullName': fullName,
          'userEmail': userEmail,
          'userId': newUser.uid,
          'createAt': DateTime.now(),
        });

        // Sign out and navigate to SignIn screen
        await FirebaseAuth.instance.signOut();
        Get.offAll(() => const MainBottomNavScreen());

        themeSnackBar(
          "Success",
          "Account created successfully",
        );
      } else {
        errorSnackBar(
          "Sign Up Error",
          "Data Doesn't fetch ",
        );
      }
    } on FirebaseAuthException catch (e) {
      errorSnackBar(
        "Sign Up Error",
        e.message ?? "An error occurred",
      );
    } catch (e) {
      errorSnackBar(
        "Error",
        "Something went wrong: $e",
      );
    } finally {
      setState(() {
        _signUpInProgress = false;
      });
    }
  }
}
