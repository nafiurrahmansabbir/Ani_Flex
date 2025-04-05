import 'package:ani_flex/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../utils/assets_path.dart';
import '../widgets/demo_categories_view_card.dart';
import '../widgets/search_text_field.dart';

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
    return DemoCategoriesViewCard(animeList: AssetsPath.myListAnime);
  }

  Widget _romanceGridview() {
    return DemoCategoriesViewCard(animeList: AssetsPath.myListAnime);
  }

  Widget _comedyGridview() {
    return DemoCategoriesViewCard(animeList: AssetsPath.myListAnime);
  }

  Widget _horrorGridview() {
    return DemoCategoriesViewCard(animeList: AssetsPath.myListAnime);
  }
}
