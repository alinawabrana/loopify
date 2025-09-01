import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PromotedItems extends StatefulWidget {
  const PromotedItems({
    super.key,
    required this.promotedItemImage,
    required this.promotedItemTitle,
    required this.promotedItemsPrice,
  });

  final String promotedItemImage;
  final String promotedItemTitle;
  final int promotedItemsPrice;

  @override
  State<PromotedItems> createState() => _PromotedItemsState();
}

class _PromotedItemsState extends State<PromotedItems> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 167,
      // height: 228,
      child: Column(
        spacing: 8,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              widget.promotedItemImage,
              width: 167,
              height: 167,
            ),
          ),
          Text(
            widget.promotedItemTitle,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF4B5563),
              letterSpacing: 0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'USD ${widget.promotedItemsPrice}',
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
        ],
      ),
    );
  }
}
