import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loopify/featutres/shop/screens/home/widgets/promoteditems/promoted_items.dart';

import '../../../../../../data/data.dart';
import '../../../../../../utils/common/widgets/text_tile.dart';

class PromotedItemsGrid extends StatelessWidget {
  const PromotedItemsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          TextTile(title: 'Promoted Items'),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: Platform.isIOS ? 270 : 250,
              crossAxisSpacing: 16,
              mainAxisSpacing: 24,
            ),
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: promotedItems.length,
            itemBuilder: (context, index) {
              final promotedItem = promotedItems[index];
              return PromotedItems(promotedItem: promotedItem);
            },
          ),
        ],
      ),
    );
  }
}
