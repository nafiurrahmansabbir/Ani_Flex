import 'package:ani_flex/presentation/ui/screens/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoutPopupDialog extends StatefulWidget {


  const LogoutPopupDialog({super.key,});


  @override
  State<LogoutPopupDialog> createState() => _LogoutPopupDialogState();
}

class _LogoutPopupDialogState extends State<LogoutPopupDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Logout"),
      content: const Text("Are you sure you want to log out?"),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("No"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            FirebaseAuth.instance.signOut();
            Get.offAll(()=>SignInScreen());
          },
          child: const Text("Yes"),
        ),
      ],
    );
  }
}
