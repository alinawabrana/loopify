import 'package:flutter/material.dart';
import 'package:loopify/featutres/shop/screens/product_detail/widgets/product_detail_row.dart';

import '../../../../../utils/common/widgets/text_tile.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTile(title: 'Product details:', lineHeight: 1.2),
        SizedBox(height: 24),
        Column(
          spacing: 18,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailRow(
              title: 'Price',
              detail: 'USD 850',
              isNegotiable: true,
            ),
            ProductDetailRow(title: 'Condition', detail: 'Excellent'),
            ProductDetailRow(title: 'Category', detail: 'Bag'),
            ProductDetailRow(title: 'Location', detail: 'New York'),
            ProductDetailRow(title: 'Material', detail: 'Leather'),
            ProductDetailRow(title: 'Color', detail: 'Brown'),
          ],
        ),
      ],
    );
  }
}
