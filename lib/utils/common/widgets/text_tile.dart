import 'package:flutter/material.dart';

class TextTile extends StatelessWidget {
  const TextTile({super.key, required this.title, this.lineHeight});

  final String title;
  final double? lineHeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color(0xFF0D111A),
        height: lineHeight,
      ),
    );
  }
}
