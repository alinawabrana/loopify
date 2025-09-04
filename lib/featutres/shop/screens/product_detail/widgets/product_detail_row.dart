import 'package:flutter/material.dart';
import 'package:loopify/utils/constants/colors.dart';

class ProductDetailRow extends StatelessWidget {
  const ProductDetailRow({
    super.key,
    required this.title,
    required this.detail,
    this.isNegotiable = false,
  });

  final String title;
  final String detail;
  final bool isNegotiable;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            height: 1.2,
          ),
        ),
        Row(
          spacing: 4,
          children: [
            isNegotiable
                ? Text(
                    'Negotiable',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AColors.primaryGreen500TextColor,
                    ),
                  )
                : SizedBox.shrink(),
            Text(detail, style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
