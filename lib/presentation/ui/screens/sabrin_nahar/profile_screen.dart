// // import 'package:device_preview/device_preview.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// //
// // import 'app.dart';
// // import 'firebase_options.dart';
// // import 'presentation/state_holder/bottom_nav_bar_controller.dart';
// //
// // Future<void> main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(
// //     options: DefaultFirebaseOptions.currentPlatform,
// //   );
// //   Get.put(BottomNavBarController());
// //   runApp(
// //     DevicePreview(
// //       enabled: false,
// //       builder: (context) =>const AniFlex(),
// //     ),
// //   );
// // }
//
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
// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Get.to(() => YtPlayer(
//                         videoUrl:
//                             'https://youtu.be/A5OLaBlQP9I?si=SMORoGzyw2oEk5Iw',
//                         detailsVideo:
//                             '"Waku waku" (わくわく) is a Japanese onomatopoeia that expresses excitement, thrill, or nervousness, and it can be used in various contexts, including TV shows, video games, and everyday conversations',
//                         name: "Waku Waku Song "));
//                   },
//                   child: CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage(AssetsPath.defaultAvatar),
//                   ),
//                 ),
//                 const SizedBox(width: 20),
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Anya Forger',
//                         style: Theme.of(context).textTheme.bodyLarge,
//                       ),
//                       Text(
//                         'Anyaforger@gmail.com',
//                         style: Theme.of(context).textTheme.bodyLarge,
//                       ),
//                       const SizedBox(height: 10),
//                       SizedBox(
//                           width: 150,
//                           height: 30,
//                           child: ElevatedButton(
//                               onPressed: () {
//                                 Get.to(() => EditProfileScreen());
//                               },
//                               child: Text('Edit Profile')))
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(
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
//                   Divider(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.language,
//                             color: AppColors.themeColor,
//                           ),
//                           const SizedBox(width: 10),
//                           Text(
//                             "Language",
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
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.location_on,
//                             color: AppColors.themeColor,
//                           ),
//                           const SizedBox(width: 10),
//                           Text(
//                             "Location",
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
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.subscriptions,
//                             color: AppColors.themeColor,
//                           ),
//                           const SizedBox(width: 10),
//                           Text(
//                             "Subscription",
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
//                   Divider(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.delete,
//                             color: AppColors.themeColor,
//                           ),
//                           const SizedBox(width: 10),
//                           Text(
//                             "Clear Cache",
//                             style: Theme.of(context).textTheme.bodyLarge,
//                           ),
//                         ],
//                       ),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.arrow_forward_ios,
//                             color: AppColors.themeColor,
//                           )),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.history_outlined,
//                             color: AppColors.themeColor,
//                           ),
//                           const SizedBox(width: 10),
//                           Text(
//                             "Clear History",
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
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.logout_rounded,
//                             color: AppColors.themeColor,
//                           ),
//                           const SizedBox(width: 10),
//                           Text(
//                             "Logout",
//                             style: Theme.of(context).textTheme.bodyLarge,
//                           ),
//                         ],
//                       ),
//                       IconButton(
//                           onPressed: () {
//                             showDialog(
//                               context: context,
//                               builder: (context) => LogoutPopupDialog(),
//                             );
//                           },
//                           icon: Icon(
//                             Icons.arrow_forward_ios,
//                             color: AppColors.themeColor,
//                           ))
//                     ],
//                   ),
//                 ],
//               ),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
