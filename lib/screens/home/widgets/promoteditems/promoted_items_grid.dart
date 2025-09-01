import 'package:flutter/material.dart';
import 'package:loopify/screens/home/widgets/promoteditems/promoted_items.dart';

import '../../../../data/data.dart';
import '../../../../utils/common/widgets/text_tile.dart';

class PromotedItemsGrid extends StatelessWidget {
  const PromotedItemsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 36, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          TextTile(title: 'Promoted Items'),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 270,
              crossAxisSpacing: 16,
              mainAxisSpacing: 24,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: promotedItems.length,
            itemBuilder: (context, index) {
              final (title, price, image) = promotedItems[index];
              return PromotedItems(
                promotedItemTitle: title,
                promotedItemsPrice: price,
                promotedItemImage: image,
              );
            },
          ),
        ],
      ),
    );
  }
}
