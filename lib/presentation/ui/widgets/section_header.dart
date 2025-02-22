import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key, required this.title, required this.onTap,
  });


  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    late final TextTheme textTheme=Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500),),
        TextButton(onPressed: onTap, child: Text('See All'))
      ],
    );
  }
}