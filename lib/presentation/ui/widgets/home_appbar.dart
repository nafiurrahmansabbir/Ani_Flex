
import 'package:flutter/material.dart';
import 'app_logo_svg.dart';
import 'appbar_icon_button.dart';

AppBar HomeAppBar() {
  return AppBar(
    title: AppLogoSvg(logoWidth: 80),
    actions: [
      AppBarIconButton(
        iconData: Icons.person,
        onTap: () {

        },
      ),
      const SizedBox(width: 8),

      AppBarIconButton(
        iconData: Icons.notifications_active_outlined,
        onTap: () {},
      ),
      const SizedBox(width: 8),
      AppBarIconButton(
        iconData: Icons.search,
        onTap: () {},
      ),
      const SizedBox(width: 8),
    ],
  );
}
