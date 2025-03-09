import 'package:ani_flex/presentation/ui/screens/main_bottom_nav_screen/main_bottom_nav_screen.dart';
import 'package:ani_flex/presentation/ui/utils/assets_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/app_logo_svg.dart';
import '../widgets/themeSnackBar.dart';
import 'home_screen.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _addressTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    AppLogoSvg(logoWidth: 120),
                    Text(
                      'Complete Profile',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      'Get Start with us with your details',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 10),
                    CircleAvatar(
                      radius: 50,
                      child: Image.asset(AssetsPath.defaultAvatar),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _firstNameTEController,
                      validator: (String? value) {
                        if (value?.trim().isEmpty ?? true) {
                          return 'Enter your first name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'First Name',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _lastNameTEController,
                      validator: (String? value) {
                        if (value?.trim().isEmpty ?? true) {
                          return 'Enter second first name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _mobileTEController,
                      validator: (String? value) {
                        if (value?.trim().isEmpty ?? true) {
                          return 'Enter second mobile number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Mobile',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _addressTEController,
                      validator: (String? value) {
                        if (value?.trim().isEmpty ?? true) {
                          return 'Enter your Address';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Address',
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            themeSnackBar('Successful',
                                'Profile information successfully added');
                            Get.offAll(() => MainBottomNavScreen());
                          }
                        },
                        child: Text('Complete'))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _addressTEController.dispose();
    super.dispose();
  }
}
