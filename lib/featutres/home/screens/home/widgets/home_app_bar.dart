import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/common/widgets/container/circular_container.dart';
import '../../../../../utils/common/widgets/icons/primary_icon.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/svg_image_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: AppBar(
        toolbarHeight: 36,
        leading: Image.asset(AImages.appLogo),
        forceMaterialTransparency: true,
        leadingWidth: 30.27,
        titleSpacing: 12,
        title: Text('Good Morning, Alex!'),
        titleTextStyle: Theme.of(context).textTheme.titleMedium,
        actions: [
          CircularContainer(
            onTap: () {},
            shadowBlurRadius: 4,
            shadowOffset: Offset(0, 4),
            shadowColor: Color(0x40E3E3E3),
            child: PrimaryIcon(icon: Iconsax.heart),
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
    );
  }
}
