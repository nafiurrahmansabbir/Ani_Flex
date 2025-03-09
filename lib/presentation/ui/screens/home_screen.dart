import 'package:ani_flex/presentation/ui/utils/assets_path.dart';
import 'package:ani_flex/presentation/ui/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/categories_section.dart';
import '../widgets/home_bannner_slider.dart';

import '../widgets/search_text_field.dart';
import '../widgets/show_picture.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchTEController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchTextField(textEditingController: _searchTEController),
              const SizedBox(height: 16),
              HomeBannerSlider(),
              const SizedBox(height: 10),
              CategoriesSection(),
              SectionHeader(title: 'Top Watch', onTap: (){}),
              const SizedBox(height: 10,),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
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
                  }),


            ],
          ),
        ),
      ),
    );
  }
}
