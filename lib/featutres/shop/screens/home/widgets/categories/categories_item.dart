import 'package:flutter/material.dart';
import 'package:loopify/featutres/shop/models/category_model.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
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
            child: Image.asset(category.imageURL),
          ),
          Text(
            category.label,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF374151),
            ),
          ),
        ],
      ),
    );
  }
}
