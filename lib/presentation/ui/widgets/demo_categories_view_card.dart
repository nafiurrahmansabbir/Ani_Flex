import 'package:ani_flex/presentation/ui/widgets/themeSnackBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/video_player/yt_player.dart';

class DemoCategoriesViewCard extends StatelessWidget {
  final List<Map<String, dynamic>> animeList;

  const DemoCategoriesViewCard({
    super.key,
    required this.animeList, // Required list parameter
  });

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: animeList.length,
      itemBuilder: (context, index) {
        final anime = animeList[index];
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            anime["image"]!,
                            fit: BoxFit.cover,
                          ),
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
                              maxLines: 1, // Ensures text does not overflow
                            ),
                            Text(
                              "Episodes ${anime["episodes"]}",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        callDemoVideo();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red.shade700,
                                      ),
                                      child: const Text('Play'),
                                    ),
                                  ),
                                  const SizedBox(width: 10), // Space between buttons
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        themeSnackBar('Added', 'Successfully added on your list');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey.shade700,
                                      ),
                                      child: const Text('+ Add'),
                                    ),
                                  ),
                                ],
                              ),
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
