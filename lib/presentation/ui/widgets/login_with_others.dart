import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/assets_path.dart';
import 'login_With_logo.dart';

Widget loginWithOthers() {
  return Column(
    children: [
      const SizedBox(
        height: 16,
      ),
      RichText(
        text: TextSpan(
            text: 'OR - ',
            style: TextStyle(color: AppColors.themeColor),
            children: [TextSpan(text: 'Login With')]),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LoginWithLogo(
            image: AssetsPath.googleLogo,
            onTap: () {},
          ),
          LoginWithLogo(
            image: AssetsPath.facebookLogo,
            onTap: () {},
          ),
          LoginWithLogo(
            image: AssetsPath.twitterLogo,
            onTap: () {},
          ),
        ],
      ),
    ],
  );
}