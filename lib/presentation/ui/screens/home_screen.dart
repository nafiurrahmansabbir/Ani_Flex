import 'package:flutter/material.dart';

import '../widgets/home_bannner_slider.dart';
import '../widgets/home_drawer.dart';
import '../widgets/search_text_field.dart';
import '../widgets/home_appbar.dart';

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
      drawer: HomeDrawer(),
      appBar: buildAppBarHome(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchTextField(textEditingController: _searchTEController),
            SizedBox(height: 16),
            HomeBannerSlider(),

          ],
        ),
      ),
    );
  }
}




