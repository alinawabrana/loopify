import 'package:flutter/material.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({super.key, required this.productImages});

  final List<String> productImages;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        productImages.length - 1,
        (index) => Image.asset(productImages[index + 1], width: 72, height: 72),
      ),
    );
  }
}
