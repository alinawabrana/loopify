import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loopify/featutres/shop/models/promoted_items_model.dart';
import 'package:loopify/utils/helper/helpers.dart';

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
    return SizedBox(
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
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF4B5563),
              letterSpacing: 0,
            ),
          ),
          SizedBox(
            width: 167,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'USD ${AHelper.formattedPrice(widget.promotedItem.price)}',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    isFavorite = !isFavorite;
                    setState(() {});
                  },
                  child: Icon(
                    isFavorite ? Iconsax.heart5 : Iconsax.heart,
                    color: Color(0XFF32B780),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
