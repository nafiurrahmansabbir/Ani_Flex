import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/video_player/yt_player.dart';
import '../utils/app_colors.dart';

class PlayFloatingActionButton extends StatelessWidget {
  const PlayFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: AppColors.themeColor,
      backgroundColor: Colors.transparent,
      elevation: 0,

      onPressed: () {
      callDemoVideo();
       },
      child: Icon(Icons.play_circle,size: 60,),
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
