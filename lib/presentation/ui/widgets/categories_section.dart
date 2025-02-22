import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import 'section_header.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'Categories',
          onTap: () {},
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: AppColors.themeColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.movie_creation_outlined,
                      size: 48,
                      color: AppColors.themeColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text('Movies',style: TextStyle(color: AppColors.themeColor),)
                ],
              );
            },
            separatorBuilder: (_, __) => const SizedBox(width: 10),
          ),
        ),
      ],
    );
  }
}