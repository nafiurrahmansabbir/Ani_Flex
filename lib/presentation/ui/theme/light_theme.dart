
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.themeColor,
      brightness: Brightness.light,
    ).copyWith(
      surface: AppColors.lightThemeSurfaceColor,
      onSurface: Colors.black,
      surfaceTint: Colors.white,
      primary: Colors.black,
      onPrimary: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightThemeAppBarColor,
      elevation: 0.0,
      surfaceTintColor: Colors.black,
    ),
    textTheme: TextTheme(
        headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
      // bodyLarge: TextStyle(color: Colors.black),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // contentPadding: const EdgeInsets.symmetric(horizontal: 19),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: const BorderSide(color: AppColors.themeColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide:
            const BorderSide(color: AppColors.themeColor), // Normal state
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            const BorderSide(color: AppColors.themeColor), // When focused
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(),
      ),
    ),
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
);
