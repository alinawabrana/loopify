import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class AdSpendPackage extends StatelessWidget {
  const AdSpendPackage({
    super.key,
    required this.days,
    required this.price,
    required this.pricePerDay,
    this.onTap,
    this.isSelected = false,
  });

  final int days;
  final int price;
  final int pricePerDay;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(12, 16, 12, 18),
        decoration: BoxDecoration(
          color: isSelected
              ? AColors.secondaryBackgroundColor
              : AColors.primaryBackgroundColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Feature Ad',
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge!.copyWith(height: 1.1),
                ),
                Text(
                  '$days Days',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(height: 1.1),
                ),
              ],
            ),
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "$price\$",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    height: 1.1,
                    color: AColors.primaryColor,
                  ),
                ),
                Text(
                  '\$$pricePerDay / Day',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(height: 1.1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
