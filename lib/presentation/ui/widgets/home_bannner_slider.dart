import 'package:ani_flex/presentation/ui/utils/assets_path.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/video_player/yt_player.dart';
import '../utils/app_colors.dart';

class HomeBannerSlider extends StatefulWidget {
  const HomeBannerSlider({super.key});

  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              _selectedIndex.value = index;
            },
          ),
          items: AssetsPath.bannerData.map((banner) {
            return GestureDetector(
              onTap: () {
                Get.to(() => YtPlayer(
                      name: banner["name"]!,
                      videoUrl: banner["video"]!,
                      detailsVideo: banner["about"]!,
                    ));
              },
              child: Image.asset(
                banner["image"]!,
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        ValueListenableBuilder<int>(
          valueListenable: _selectedIndex,
          builder: (context, currentIndex, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                AssetsPath.bannerData.length,
                (i) => Container(
                  height: 12,
                  width: 12,
                  margin: const EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                    color: currentIndex == i ? AppColors.themeColor : null,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
