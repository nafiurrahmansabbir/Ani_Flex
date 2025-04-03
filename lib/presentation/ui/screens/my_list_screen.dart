import 'package:ani_flex/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/assets_path.dart';
import '../widgets/play_floating_action_button.dart';
import 'video_player/yt_player.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({super.key});

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: AssetsPath.myListAnime.length,
              itemBuilder: (context, index) {
                final anime = AssetsPath.myListAnime[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        anime["time"]!,
                        style: TextStyle(
                          color: AppColors.themeColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  anime["image"]!,
                                  width: 120,
                                  // height: 10,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      anime["title"]!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Episodes ${anime["episodes"]}",
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      "Watch your favorite anime",
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            callDemoVideo();
                                          },
                                          child: Text('Play')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: PlayFloatingActionButton(),
    );
  }

  void callDemoVideo() {
    String videoUrl = "https://youtu.be/fPopd3ZOGUY?si=qsuKsPDVjaAXkKz_";
    String videoDetails =
        "Sakamoto Days | Final Trailer | Netflix\n\n Sakamoto Days is a Japanese manga series written and illustrated by Yuto Suzuki. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since November 2020, with its chapters collected in 21 tankōbon volumes as of March 2025";
    String videName = 'Sakamoto Days';
    Get.to(() => YtPlayer(
        videoUrl: videoUrl, detailsVideo: videoDetails, name: videName));
  }
}
