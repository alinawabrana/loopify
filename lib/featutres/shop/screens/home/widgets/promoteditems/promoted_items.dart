import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loopify/featutres/shop/models/promoted_items_model.dart';
import 'package:loopify/utils/helper/helpers.dart';

import '../../../product_detail/product_detail.dart';

class PromotedItems extends StatefulWidget {
  const PromotedItems({super.key, required this.promotedItem});

  final PromotedItemsModel promotedItem;

  @override
  State<PromotedItems> createState() => _PromotedItemsState();
}

class _PromotedItemsState extends State<PromotedItems> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductDetail()),
      ),
      child: SizedBox(
        width: 167,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(widget.promotedItem.imageURL),
            ),
            Text(
              widget.promotedItem.title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              width: 167,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'USD ${AHelper.formattedPrice(widget.promotedItem.price)}',
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.copyWith(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      isFavorite = !isFavorite;
                      setState(() {});
                    },
                    child: Icon(
                      isFavorite ? Iconsax.heart5 : Iconsax.heart,
                      color: Color(0XFF32B780),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
