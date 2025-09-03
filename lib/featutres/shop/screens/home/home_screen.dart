import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loopify/featutres/shop/screens/home/widgets/banner_image_with_text.dart';
import 'package:loopify/featutres/shop/screens/home/widgets/categories/categories_list.dart';
import 'package:loopify/featutres/shop/screens/home/widgets/custom_search_field.dart';
import 'package:loopify/featutres/shop/screens/home/widgets/promoteditems/promoted_items_grid.dart';
import 'package:loopify/utils/constants/image_strings.dart';
import 'package:loopify/utils/constants/svg_image_strings.dart';

import '../../../../utils/common/widgets/container/circular_container.dart';

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: AppBar(
                  toolbarHeight: 36,
                  leading: Image.asset(AImages.appLogo),
                  forceMaterialTransparency: true,
                  leadingWidth: 30.27,
                  titleSpacing: 12,
                  title: Text('Good Morning, Alex!'),
                  titleTextStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF0D111A),
                  ),
                  actions: [
                    CircularContainer(
                      onTap: () {},
                      shadowBlurRadius: 4,
                      shadowOffset: Offset(0, 4),
                      shadowColor: Color(0x40E3E3E3),
                      child: Icon(
                        Iconsax.heart,
                        size: 20,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                    SizedBox(width: 8),
                    CircularContainer(
                      onTap: () {},
                      shadowBlurRadius: 4,
                      shadowOffset: Offset(0, 4),
                      shadowColor: Color(0x40E3E3E3),
                      child: SvgPicture.asset(
                        ASvgImages.notificationIcon,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              CustomSearchField(),

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
