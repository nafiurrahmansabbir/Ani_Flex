import 'package:ani_flex/presentation/state_holder/bottom_nav_bar_controller.dart';
import 'package:ani_flex/presentation/ui/screens/categories_screen.dart';
import 'package:ani_flex/presentation/ui/screens/home_screen.dart';
import 'package:ani_flex/presentation/ui/screens/my_list_screen.dart';
import 'package:ani_flex/presentation/ui/screens/my_profile_screen.dart';
import 'package:ani_flex/presentation/ui/utils/app_colors.dart';
import 'package:ani_flex/presentation/ui/widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/home_drawer.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navBarController.selectedIndexAtHome();

  }

  final BottomNavBarController _navBarController=Get.find<BottomNavBarController>();

  final List<Widget> _screens=[
    HomeScreen(),
    CategoriesScreen(),
    MyListScreen(),
    MyProfileScreen()

  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      builder: (_) {
        return Scaffold(
          appBar: HomeAppBar(),
          drawer: HomeDrawer(),
          body: _screens[_navBarController.selectedIndex],
          bottomNavigationBar: NavigationBar(
              selectedIndex: _navBarController.selectedIndex,
              onDestinationSelected: _navBarController.changeIndex,
              destinations: [
            NavigationDestination(icon: Icon(Icons.home,color: AppColors.themeColor.withOpacity(0.8),), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.category_outlined,color: AppColors.themeColor.withOpacity(0.8),), label: 'Categories'),
            NavigationDestination(icon: Icon(Icons.video_collection_sharp,color: AppColors.themeColor.withOpacity(0.8),), label: 'My List'),
            NavigationDestination(icon: Icon(Icons.account_circle_outlined,color: AppColors.themeColor.withOpacity(0.8),), label: 'Profile'),
          ]),
        );
      }
    );
  }
}
