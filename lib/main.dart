import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';
import 'firebase_options.dart';
import 'presentation/state_holder/bottom_nav_bar_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(BottomNavBarController());
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) =>const AniFlex(),
    ),
  );
}
