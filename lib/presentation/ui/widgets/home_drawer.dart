import 'package:ani_flex/presentation/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/complete_profile_screen.dart';
import '../screens/email_verification_screen.dart';
import '../screens/sign_in_screen.dart';
import '../utils/app_colors.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: GestureDetector(
              onTap: _completeProfileScreen,
              child: CircleAvatar(
                child: Image.asset(AssetsPath.defaultAvatar),
              ),
            ),
            accountName: Text('Anya'),
            accountEmail: Text('SpyXAnya@gmail.com'),
            decoration: BoxDecoration(color: AppColors.themeColor),
          ),

          ListTile(
            leading: Icon(Icons.home, color: AppColors.themeColor),
            title: Text("Home"),
            onTap: () {},
          ),ListTile(
            leading: Icon(Icons.favorite_outline, color: AppColors.themeColor),
            title: Text("Favorite"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shop, color: AppColors.themeColor),
            title: const Text('My List'),
            onTap: () {},
          ),ListTile(
            leading: const Icon(Icons.settings, color: AppColors.themeColor),
            title: const Text('Settings'),
            onTap: () {},
          ),

          const Spacer(),
          const Text('version 1.0.0'),
          const Divider(),
          ListTile(
            leading: Icon(Icons.login_sharp, color: AppColors.themeColor),
            title: Text("Login"),
            onTap: () {
              Get.to(() => SignInScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: AppColors.themeColor),
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );


  }
  void _completeProfileScreen(){
Get.to(()=>CompleteProfileScreen());
  }
}
