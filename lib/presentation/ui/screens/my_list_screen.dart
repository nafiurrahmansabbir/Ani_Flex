import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/assets_path.dart';
import '../widgets/search_text_field.dart';
import '../widgets/show_picture.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({super.key});

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  final TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchTextField(textEditingController: textEditingController,),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
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
                  }),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
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
                  }),

            ],
          ),
        ),
      )
    );
  }
}
