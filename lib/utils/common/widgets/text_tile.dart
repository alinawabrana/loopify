import 'package:flutter/material.dart';

class TextTile extends StatelessWidget {
  const TextTile({super.key, required this.title, this.lineHeight});

  final String title;
  final double? lineHeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.headlineMedium!.copyWith(height: lineHeight),
    );
  }
}
