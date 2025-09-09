import 'package:flutter/material.dart';

import '../../../../../../utils/common/widgets/text_tile.dart';

class SellerNote extends StatelessWidget {
  const SellerNote({super.key, required this.sellerNote});

  final String sellerNote;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTile(title: "Seller's note", lineHeight: 1.2),
        Text(sellerNote, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
