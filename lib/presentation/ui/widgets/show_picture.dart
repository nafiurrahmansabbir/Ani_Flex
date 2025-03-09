import 'package:ani_flex/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ShowPicture extends StatefulWidget {
  const ShowPicture({super.key, required this.picture});
  final String picture;

  @override
  State<ShowPicture> createState() => _ShowPictureState();
}

class _ShowPictureState extends State<ShowPicture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Center(
            child: Card(
              child: Image.asset(
                widget.picture,  // Accessing the picture from the widget
                fit: BoxFit.cover, // Optional: Adjust fit as needed
              ),
            ),
          ),
          Positioned(
            top: 60, // Adjust position as needed
            left: 10, // Adjust position as needed
            child: IconButton(
              icon: const Icon(Icons.close_sharp,color: AppColors.themeColor,),
              onPressed: () {
                Navigator.of(context).pop(); // This will pop the current screen from the stack
              },
            ),
          ),
        ],
      ),
    );
  }
}
