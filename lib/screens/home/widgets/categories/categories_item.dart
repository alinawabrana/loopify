import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    super.key,
    required this.categoryImage,
    required this.categoryLabel,
  });

  final String categoryImage;
  final String categoryLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        Container(
          width: 72,
          height: 72,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF3F4F6),
            shape: BoxShape.circle,
          ),
          child: Image.asset(categoryImage),
        ),
        Text(
          categoryLabel,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF374151),
          ),
        ),
      ],
    );
  }
}
