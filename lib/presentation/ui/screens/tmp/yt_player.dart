import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../widgets/full_screen_youtube_player.dart';


class YtPlayer extends StatefulWidget {
  final String videoUrl;

  const YtPlayer({super.key, required this.videoUrl});

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
    final int currentPosition = _controller.value.position.inSeconds; // Get current timestamp
    _controller.pause(); // Pause before navigating to fullscreen

    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenPlayer(
          videoUrl: widget.videoUrl,
          startAt: currentPosition, // Pass current timestamp
        ),
      ),
    );

    // Resume video from the same position after returning
    _controller.seekTo(Duration(seconds: currentPosition));
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trailer')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
              onReady: () {
              },
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: const ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),

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
                          icon: Icon(Icons.fullscreen, size: 30, color: Colors.white),
                          onPressed: goToFullScreen, // Call function to sync and go fullscreen
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    " Details : Anime is a style of animation popular in Japanese films and television series. It often combines stark, colorful graphics with action-packed plots. Early anime films were intended primarily for a Japanese audience. Therefore, they used many cultural references unique to Japan.",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                const Divider(),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: () {}, child: const Text('See All Episodes'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
