import 'package:ani_flex/presentation/ui/utils/assets_path.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
            autoPlay: true, // Enables auto-sliding
            autoPlayInterval: Duration(seconds: 5),
            enlargeCenterPage: true, // Zoom effect
            onPageChanged: (index, reason) {
              _selectedIndex.value = index;
            },
          ),
          items: AssetsPath.bannerImages.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  alignment: Alignment.center,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover, // Adjust to make it look better
                  ),
                );
              },
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
                AssetsPath.bannerImages.length,
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
        )
      ],
    );
  }


  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
