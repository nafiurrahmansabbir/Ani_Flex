import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      surface: AppColors.darkThemeSurfaceColor,
      onSurface: Colors.white,
      surfaceTint: Colors.black12,
      primary: Colors.white,
      onPrimary: Colors.black,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkThemeAppBarColor,
      elevation: 0.0,
      surfaceTintColor: Colors.black,
    ),
    textTheme: TextTheme(
        headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
    inputDecorationTheme: InputDecorationTheme(
        // contentPadding: const EdgeInsets.symmetric(horizontal: 19),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: const BorderSide(color: AppColors.themeColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.themeColor), // Normal state
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.themeColor), // When focused
        ),
        errorBorder: OutlineInputBorder()),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(const Size.fromHeight(40)),
        backgroundColor: WidgetStatePropertyAll(AppColors.themeColor),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.themeColor),
    ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppColors.themeColor, // Set your custom color here
  ),


)


;
