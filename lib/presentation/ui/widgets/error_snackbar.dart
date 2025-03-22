import 'package:flutter/material.dart';
import 'package:get/get.dart';


void errorSnackBar(String title,String message ) {
  Get.snackbar(
      title,
      message,
      backgroundColor: Colors.red, colorText: Colors.white
  );
}