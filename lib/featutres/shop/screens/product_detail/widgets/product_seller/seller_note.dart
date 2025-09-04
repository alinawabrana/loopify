import 'package:flutter/material.dart';

import '../../../../../../utils/common/widgets/text_tile.dart';

class SellerNote extends StatelessWidget {
  const SellerNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTile(title: "Seller's note", lineHeight: 1.2),
        Text(
          'Thank you for considering our luxurious Gucci laptop bag! This stunning piece is adorned with exquisite pearls and elegant gold accents, making it the perfect accessory for the modern professional.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
