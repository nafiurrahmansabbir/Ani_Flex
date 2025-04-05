import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/assets_path.dart';

class AppLogoSvg extends StatelessWidget {
  const AppLogoSvg({
    super.key,
    required this.logoWidth,
  });

  final double logoWidth;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetsPath.appLogoSVG,
      height: logoWidth,
    );
  }
}

