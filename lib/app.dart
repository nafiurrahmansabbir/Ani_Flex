
import 'package:ani_flex/presentation/ui/screens/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'controller_binder.dart';
import 'presentation/ui/screens/my_list_screen.dart';
import 'presentation/ui/screens/splash_screen.dart';
import 'presentation/ui/theme/dark_theme.dart';
import 'presentation/ui/theme/light_theme.dart';

class AniFlex extends StatelessWidget {
  const AniFlex({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    SystemChrome.setSystemUIOverlayStyle(
      brightness == Brightness.dark
          ? SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
      )
          : SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return GetMaterialApp(
      initialBinding: ControllerBinder(),
      debugShowCheckedModeBanner: false,
      // home: const  MyListScreen(),
      home: const SplashScreen(),
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}