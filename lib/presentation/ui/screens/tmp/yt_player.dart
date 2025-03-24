import 'package:ani_flex/presentation/ui/utils/app_colors.dart';
import 'package:ani_flex/presentation/ui/widgets/themeSnackBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../widgets/full_screen_youtube_player.dart';
import 'package:get/get.dart';

class YtPlayer extends StatefulWidget {
  final String name;
  final String videoUrl;
  final String detailsVideo;

  const YtPlayer(
      {super.key,
      required this.videoUrl,
      required this.detailsVideo,
      required this.name});

  @override
  State<YtPlayer> createState() => _YtPlayerState();
}

class _YtPlayerState extends State<YtPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final String? videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
    if (videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(autoPlay: true),
      );
    } else {
      throw Exception("Invalid YouTube URL");
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void goToFullScreen() async {
    final int currentPosition =
        _controller.value.position.inSeconds; // Get current timestamp
    _controller.pause(); // Pause before navigating to fullscreen

    await Get.to(() => FullScreenPlayer(
          videoUrl: widget.videoUrl,
          startAt: currentPosition, // Pass current timestamp
        ));

    // Resume video from the same position after returning
    _controller.seekTo(Duration(seconds: currentPosition));
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
              onReady: () {},
              showVideoProgressIndicator: true,
              bottomActions: [
                CurrentPosition(),
                ProgressBar(
                  isExpanded: true,
                  colors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                ),
              ],
            ),
            builder: (context, player) {
              return Column(
                children: [
                  Stack(
                    children: [
                      player,
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: IconButton(
                          icon: const Icon(Icons.fullscreen,
                              size: 30, color: Colors.white),
                          onPressed:
                              goToFullScreen, // Call function to sync and go fullscreen
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 10),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About ',
                      style: TextTheme.of(context).headlineSmall?.copyWith(
                        fontWeight: FontWeight.w400,
              
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.detailsVideo,
                      // Fixed incorrect reference to detailsVideo
                      style: TextTheme.of(context).bodyLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){}, child: Text('More details')),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(height: 15),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('See All Episodes')),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: AppColors.themeColor,
        // backgroundColor: AppColors.themeColor.withOpacity(0.1),
        onPressed: () {
          themeSnackBar('Added on favorite list', "successfully added on your favorite list");
        },
        child: Icon(Icons.favorite),
      ),
    );
  }
}
