
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                    Get.to(() => YtPlayer(
                        videoUrl:
                            'https://youtu.be/A5OLaBlQP9I?si=SMORoGzyw2oEk5Iw',
                        detailsVideo:
                            '"Waku waku" (わくわく) is a Japanese onomatopoeia that expresses excitement, thrill, or nervousness, and it can be used in various contexts, including TV shows, video games, and everyday conversations',
                        name: "Waku Waku Song "));
                  },