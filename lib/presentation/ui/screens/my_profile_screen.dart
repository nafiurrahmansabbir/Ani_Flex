import 'package:ani_flex/presentation/ui/screens/edit_profile_screen.dart';
import 'package:ani_flex/presentation/ui/utils/app_colors.dart';
import 'package:ani_flex/presentation/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';

import '../../state_holder/bottom_nav_bar_controller.dart';
import '../widgets/logout_popup_dialog.dart';
import 'video_player/yt_player.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {

  final BottomNavBarController _navBarController =
  Get.find<BottomNavBarController>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    callDemoVideo();
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(AssetsPath.defaultAvatar),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Anya Forger',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        'Anyaforger@gmail.com',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                          width: 150,
                          height: 30,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => EditProfileScreen());
                              },
                              child: Text('Edit Profile')))
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            // Divider(),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_outline,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Favorite",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            _navBarController.backToMyList();
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesome.download,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Downloads",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Language",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Location",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.subscriptions,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Subscription",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.delete,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Clear Cache",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.history_outlined,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Clear History",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.logout_rounded,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Logout",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => LogoutPopupDialog(),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  void callDemoVideo() {
    String videoUrl = "https://youtu.be/A5OLaBlQP9I?si=SMORoGzyw2oEk5Iw";
    String videoDetails =
        '"Waku waku" (わくわく) is a Japanese onomatopoeia that expresses excitement, thrill, or nervousness, and it can be used in various contexts, including TV shows, video games, and everyday conversations';
    String videName = 'Waku Waku Song';
    Get.to(() => YtPlayer(
        videoUrl: videoUrl, detailsVideo: videoDetails, name: videName));
  }
}
