import 'package:ani_flex/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/assets_path.dart';
import '../widgets/search_text_field.dart';
import '../widgets/show_picture.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchTextField(
                textEditingController: textEditingController,
              ),
              const TabBar(
                labelColor: AppColors.themeColor,
                indicatorColor: AppColors.themeColor,
                tabs: [
                  Tab(text: 'Action'),
                  Tab(text: 'Romance'),
                  Tab(text: 'Comedy'),
                  Tab(text: 'Horror'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _actionGridview(),
                    _romanceGridview(),
                    _comedyGridview(),
                    _horrorGridview()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _actionGridview() {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: AssetsPath.imageList.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              Get.to(()=>ShowPicture(picture: AssetsPath.imageList[index],));
            },
            child: Card(
              child: Image.asset(
                AssetsPath.imageList[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        });
  }

  Widget _romanceGridview() {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemCount: AssetsPath.imageList.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              Get.to(()=>ShowPicture(picture: AssetsPath.imageList[index],));
            },
            child: Card(
              child: Image.asset(
                AssetsPath.imageList[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        });
  }

  Widget _comedyGridview() {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: AssetsPath.imageList.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              Get.to(()=>ShowPicture(picture: AssetsPath.imageList[index],));
            },
            child: Card(
              child: Image.asset(
                AssetsPath.imageList[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        });
  }

  Widget _horrorGridview() {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: AssetsPath.imageList.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              Get.to(()=>ShowPicture(picture: AssetsPath.imageList[index],));
            },
            child: Card(
              child: Image.asset(
                AssetsPath.imageList[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        });
  }
}
