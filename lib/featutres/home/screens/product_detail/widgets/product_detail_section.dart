import 'package:flutter/material.dart';
import 'package:loopify/data/data.dart';
import 'package:loopify/featutres/home/models/product/product_model.dart';
import 'package:loopify/featutres/home/screens/product_detail/widgets/product_detail_row.dart';

import '../../../../../utils/common/widgets/text_tile.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key, required this.product});

  final ProductModel product;

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
              detail: 'USD ${product.price}',
              isNegotiable: product.isNegotiable,
            ),
            ProductDetailRow(title: 'Condition', detail: product.condition),
            ProductDetailRow(
              title: 'Category',
              detail: categories
                  .firstWhere((category) => category.id == product.categoryId)
                  .label,
            ),
            ProductDetailRow(title: 'Location', detail: product.location),
            ProductDetailRow(title: 'Material', detail: product.material),
            ProductDetailRow(title: 'Color', detail: product.color),
          ],
        ),
      ],
    );
  }
}
