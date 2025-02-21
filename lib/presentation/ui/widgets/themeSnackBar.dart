import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';

void themeSnackBar(String title,String message ) {
  Get.snackbar(
    title,
    message,
    backgroundColor:
    AppColors.themeColor.withOpacity(0.80),
    colorText: Colors.white,
  );
}