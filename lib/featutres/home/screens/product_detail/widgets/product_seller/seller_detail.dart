import 'package:flutter/material.dart';

import '../../../../../../utils/common/widgets/container/circular_container.dart';
import '../../../../../../utils/common/widgets/text_tile.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/image_strings.dart';

class SellerDetails extends StatelessWidget {
  const SellerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTile(title: 'Seller details:', lineHeight: 1.2),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularContainer(
              width: 45,
              height: 45,
              backgroundImage: AssetImage(AImages.sellerImage1),
            ),
            SizedBox(width: 8),
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextTile(title: 'John Doe', lineHeight: 1.2),
                Text(
                  'Joined Since 2019',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AColors.secondaryTextColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
