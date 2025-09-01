import 'package:flutter/material.dart';
import 'package:loopify/screens/home/widgets/banner_image_with_text.dart';
import 'package:loopify/screens/home/widgets/categories/categories_list.dart';
import 'package:loopify/screens/home/widgets/promoteditems/promoted_items_grid.dart';

import '../../data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BannerImageWithText(),
              CategoriesList(),
              PromotedItemsGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
