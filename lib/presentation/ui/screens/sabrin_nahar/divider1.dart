// import 'package:ani_flex/presentation/ui/screens/edit_profile_screen.dart';
// import 'package:ani_flex/presentation/ui/screens/tmp/yt_player.dart';
// import 'package:ani_flex/presentation/ui/utils/app_colors.dart';
// import 'package:ani_flex/presentation/ui/utils/assets_path.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttericon/font_awesome_icons.dart';
// import 'package:get/get.dart';
//
// import '../widgets/logout_popup_dialog.dart';
//
//
// const SizedBox(
//               height: 40,
//             ),
//             // Divider(),
//             Expanded(
//                 child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.favorite_outline,
//                             color: AppColors.themeColor,
//                           ),
//                           const SizedBox(width: 10),
//                           Text(
//                             "Favorite",
//                             style: Theme.of(context).textTheme.bodyLarge,
//                           ),
//                         ],
//                       ),
//                       IconButton(
//                           onPressed: () {
//                             Get.to(() => YtPlayer(
//                                 videoUrl:
//                                     'https://youtu.be/A5OLaBlQP9I?si=SMORoGzyw2oEk5Iw',
//                                 detailsVideo:
//                                     '"Waku waku" (わくわく) is a Japanese onomatopoeia that expresses excitement, thrill, or nervousness, and it can be used in various contexts, including TV shows, video games, and everyday conversations',
//                                 name: "Waku Waku Song "));
//                           },
//                           icon: Icon(
//                             Icons.arrow_forward_ios,
//                             color: AppColors.themeColor,
//                           ))
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             FontAwesome.download,
//                             color: AppColors.themeColor,
//                           ),
//                           const SizedBox(width: 10),
//                           Text(
//                             "Downloads",
//                             style: Theme.of(context).textTheme.bodyLarge,
//                           ),
//                         ],
//                       ),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.arrow_forward_ios,
//                             color: AppColors.themeColor,
//                           ))
//                     ],
//                   ),