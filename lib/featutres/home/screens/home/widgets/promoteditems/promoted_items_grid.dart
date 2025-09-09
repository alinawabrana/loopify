import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loopify/featutres/home/controllers/product_controller.dart';
import 'package:loopify/featutres/home/screens/home/widgets/promoteditems/promoted_items.dart';

import '../../../../../../utils/common/widgets/text_tile.dart';

class PromotedItemsGrid extends StatefulWidget {
  const PromotedItemsGrid({super.key});

  @override
  State<PromotedItemsGrid> createState() => _PromotedItemsGridState();
}

class _PromotedItemsGridState extends State<PromotedItemsGrid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          TextTile(title: 'Promoted Items'),
          FutureBuilder(
            future: ProductController().getAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text("Error: ${snapshot.error}"));
              }
              final products = snapshot.data!;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: Platform.isIOS ? 270 : 250,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 24,
                ),
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final promotedItem = products[index];
                  return PromotedItems(promotedItem: promotedItem);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
