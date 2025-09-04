import 'package:flutter/material.dart';
import 'package:loopify/featutres/shop/models/category_model.dart';
import 'package:loopify/utils/constants/colors.dart';

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
              color: AColors.primaryBackgroundColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(category.imageURL),
          ),
          Text(
            category.label,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AColors.primaryTextDarkColor,
            ),
          ),
        ],
      ),
    );
  }
}
