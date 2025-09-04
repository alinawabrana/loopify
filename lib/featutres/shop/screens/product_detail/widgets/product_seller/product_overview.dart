import 'package:flutter/material.dart';

class ProductOverview extends StatelessWidget {
  const ProductOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text(
          'Luxurious Gucci Laptop Bag Embellished with Stunning Pearls',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
