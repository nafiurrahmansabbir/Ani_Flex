
import 'package:flutter/material.dart';

class AppBarIconButton extends StatelessWidget {
  const AppBarIconButton({
    super.key,
    required this.onTap,
    required this.iconData,
  });

  final VoidCallback onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).colorScheme.brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 16,
        backgroundColor: isDark?Colors.grey.shade800:Colors.grey.shade200,
        child: Icon(iconData,color: Colors.grey,size: 19,),
      ),
    );
  }
}