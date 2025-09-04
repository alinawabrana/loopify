import 'package:flutter/material.dart';
import 'package:loopify/featutres/shop/screens/home/widgets/banner_image_with_text.dart';
import 'package:loopify/featutres/shop/screens/home/widgets/categories/categories_list.dart';
import 'package:loopify/featutres/shop/screens/home/widgets/custom_search_field.dart';
import 'package:loopify/featutres/shop/screens/home/widgets/home_app_bar.dart';
import 'package:loopify/featutres/shop/screens/home/widgets/promoteditems/promoted_items_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 20),
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// App Bar
              HomeAppBar(),

              /// Search Field
              CustomSearchField(),

              /// Banner
              BannerImageWithText(),

              /// Categories
              CategoriesList(),

              /// Products
              PromotedItemsGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
