import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';
import 'presentation/state_holder/bottom_nav_bar_controller.dart';

void main() {
  Get.put(BottomNavBarController());
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) =>const AniFlex(),
    ),
  );
}
