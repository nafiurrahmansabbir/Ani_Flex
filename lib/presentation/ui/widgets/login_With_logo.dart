import 'package:flutter/material.dart';

class LoginWithLogo extends StatelessWidget {
  const LoginWithLogo({
    super.key, required this.image, required this.onTap,
  });
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      // color: Colors.red,
      child: Image.asset(image),
    );
  }
}