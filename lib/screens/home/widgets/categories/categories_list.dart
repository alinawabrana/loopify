import 'package:flutter/material.dart';

import '../../../../data/data.dart';
import '../../../../utils/common/widgets/text_tile.dart';
import 'categories_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTile(title: 'Categories'),
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final (categoryLabel, categoryImage) = categories[index];
                return CategoriesItem(
                  categoryLabel: categoryLabel,
                  categoryImage: categoryImage,
                );
              },
              separatorBuilder: (_, _) => SizedBox(width: 12),
            ),
          ),
        ],
      ),
    );
  }
}
